import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/l10n.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/manual_storage_model.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/manual_storage_page.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/storage_selector.dart';
import 'package:ubuntu_bootstrap/pages/storage/manual/storage_types.dart';
import 'package:ubuntu_bootstrap/services.dart';
import 'package:ubuntu_provision/services.dart';
import 'package:ubuntu_test/ubuntu_test.dart';
import 'package:yaru/icons.dart';
import 'package:yaru_test/yaru_test.dart';

import 'test_manual_storage.dart';

final testDisks = <Disk>[
  fakeDisk(
    path: '/dev/sda',
    size: 12,
    partitions: [
      const Partition(
        number: 1,
        size: 11,
        mount: '/mnt/1',
        format: 'btrfs',
        preserve: true,
      ),
      const Partition(
        number: 2,
        size: 22,
        mount: '/mnt/2',
        format: 'ext2',
      ),
    ],
  ),
  fakeDisk(
    path: '/dev/sdb',
    canBeBootDevice: true,
    size: 23,
    partitions: [
      const Partition(
        number: 3,
        size: 33,
        mount: '/mnt/3',
        format: 'ext3',
      ),
      const Partition(
        number: 4,
        size: 44,
        mount: '/mnt/4',
        format: 'ext4',
      ),
    ],
  ),
];

void main() {
  Widget buildPage(ManualStorageModel model) {
    final udev = MockUdevService();
    final sda = MockUdevDeviceInfo();
    when(sda.fullName).thenReturn('SDA');
    when(udev.bySysname('sda')).thenReturn(sda);
    final sdb = MockUdevDeviceInfo();
    when(sdb.fullName).thenReturn('SDB');
    when(udev.bySysname('sdb')).thenReturn(sdb);
    registerMockService<UdevService>(udev);

    return ProviderScope(
      overrides: [manualStorageModelProvider.overrideWith((_) => model)],
      child: const ManualStoragePage(),
    );
  }

  testWidgets('list of disks and partitions', (tester) async {
    final model = buildManualStorageModel(disks: testDisks);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(ManualStoragePage));
    for (final disk in testDisks) {
      expect(find.text(disk.sysname), findsOneWidget);
      expect(find.text(context.formatByteSize(disk.size)), findsOneWidget);

      for (final partition in disk.partitions.whereType<Partition>()) {
        expect(
          find.text(PartitionFormat.fromPartition(partition)!.displayName!),
          findsOneWidget,
        );
        expect(find.text(partition.mount!), findsOneWidget);
        expect(
          find.text(context.formatByteSize(partition.size!)),
          findsOneWidget,
        );
      }
    }
  });

  testWidgets('select storage', (tester) async {
    final model = buildManualStorageModel(disks: testDisks);
    await tester.pumpApp((_) => buildPage(model));

    await tester.tap(find.text(testDisks.first.sysname));
    await tester.pumpAndSettle();

    verify(model.selectStorage(0)).called(1);

    await tester.tap(find.text(testDisks.last.sysname));
    await tester.pumpAndSettle();

    verify(model.selectStorage(1)).called(1);

    await tester.tap(
      find.text(testDisks.first.partitions.whereType<Partition>().last.mount!),
    );
    await tester.pumpAndSettle();

    verify(model.selectStorage(0, 1)).called(1);
  });

  testWidgets('cannot add/edit/remove/reformat', (tester) async {
    final model = buildManualStorageModel(
      disks: testDisks,
      canAddPartition: false,
      canEditPartition: false,
      canRemovePartition: false,
      canReformatDisk: false,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(ManualStoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final addButton = find.iconButton(Icons.add);
    expect(addButton, findsOneWidget);
    expect(addButton, isDisabled);

    final editButton = find.button(l10n.changeButtonText);
    expect(editButton, findsOneWidget);
    expect(editButton, isDisabled);

    final removeButton = find.iconButton(Icons.remove);
    expect(removeButton, findsOneWidget);
    expect(removeButton, isDisabled);

    final reformatButton = find.button(l10n.newPartitionTable);
    expect(reformatButton, findsOneWidget);
    expect(reformatButton, isDisabled);
  });

  testWidgets('can add', (tester) async {
    final model =
        buildManualStorageModel(disks: testDisks, canAddPartition: true);
    await tester.pumpApp((_) => buildPage(model));

    final addButton = find.iconButton(Icons.add);
    expect(addButton, findsOneWidget);
    expect(addButton, isEnabled);
  });

  testWidgets('can edit', (tester) async {
    final model =
        buildManualStorageModel(disks: testDisks, canEditPartition: true);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(ManualStoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final editButton = find.button(l10n.changeButtonText);
    expect(editButton, findsOneWidget);
    expect(editButton, isEnabled);
  });

  testWidgets('can format', (tester) async {
    final model = buildManualStorageModel(disks: testDisks);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.byIcon(YaruIcons.checkbox), findsWidgets);
    expect(find.byIcon(YaruIcons.checkbox_checked_filled), findsWidgets);
  });

  testWidgets('can remove', (tester) async {
    final disk = testDisks.first;
    final partition = disk.partitions.whereType<Partition>().first;
    final model = buildManualStorageModel(
      disks: testDisks,
      selectedDisk: disk,
      selectedPartition: partition,
      canRemovePartition: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final removeButton = find.iconButton(Icons.remove);
    expect(removeButton, findsOneWidget);
    expect(removeButton, isEnabled);

    await tester.tap(removeButton);
    verify(model.deletePartition(disk, partition)).called(1);
  });

  testWidgets('waiting for reply', (tester) async {
    final disk = testDisks.first;
    final partition = disk.partitions.whereType<Partition>().first;
    final model = buildManualStorageModel(
      disks: testDisks,
      selectedDisk: disk,
      selectedPartition: partition,
      canRemovePartition: true,
      waitingForReply: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final removeButton = find.iconButton(Icons.remove);
    expect(removeButton, findsOneWidget);
    expect(removeButton, isDisabled);

    await tester.tap(removeButton);
    verifyNever(model.deletePartition(disk, partition));
  });

  testWidgets('can reset', (tester) async {
    final disk = testDisks.first;
    final model = buildManualStorageModel(
      disks: testDisks,
      selectedDisk: disk,
      canReformatDisk: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(ManualStoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final resetButton = find.button(l10n.newPartitionTable);
    expect(resetButton, findsOneWidget);
    expect(resetButton, isEnabled);

    await tester.tap(resetButton);
    verify(model.reformatDisk(disk)).called(1);
  });

  testWidgets('confirm new partition table', (tester) async {
    final disk = fakeDisk(ptable: 'gpt', path: '/dev/sda');
    final model = buildManualStorageModel(
      disks: [disk],
      selectedDisk: disk,
      canReformatDisk: true,
    );
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(ManualStoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final resetButton = find.button(l10n.newPartitionTable);
    expect(resetButton, findsOneWidget);
    expect(resetButton, isEnabled);

    await tester.tap(resetButton);
    await tester.pumpAndSettle();

    expect(find.byType(AlertDialog), findsOneWidget);
    verifyNever(model.reformatDisk(disk));

    await tester.tapOk();
    await tester.pumpAndSettle();

    expect(find.byType(AlertDialog), findsNothing);
    verify(model.reformatDisk(disk)).called(1);
  });

  testWidgets('revert', (tester) async {
    final model = buildManualStorageModel();
    await tester.pumpApp((_) => buildPage(model));

    final revertButton = find.button(find.ul10n((l10n) => l10n.revertLabel));
    expect(revertButton, findsOneWidget);
    expect(revertButton, isEnabled);

    await tester.tap(revertButton);
    verify(model.resetStorage()).called(1);
  });

  testWidgets('boot disk', (tester) async {
    final model = buildManualStorageModel(disks: testDisks, bootDiskIndex: 1);
    await tester.pumpApp((_) => buildPage(model));

    await tester.tap(find.byType(StorageSelector));
    await tester.pumpAndSettle();
    await tester.pump();

    final menuItem0 = find.ancestor(
      of: find.byKey(const ValueKey(0)),
      matching: find.byType(MenuItemButton),
    );
    expect(menuItem0, isDisabled);

    final menuItem1 = find.ancestor(
      of: find.byKey(const ValueKey(1)),
      matching: find.byType(MenuItemButton),
    );
    expect(menuItem1, isEnabled);

    await tester.ensureVisible(menuItem1);
    await tester.tap(menuItem1);
    await tester.pump();
    verify(model.selectBootDisk(1)).called(1);
  });

  testWidgets('set storage', (tester) async {
    final model = buildManualStorageModel(isValid: true);
    await tester.pumpApp((_) => buildPage(model));

    await tester.tapNext();
    await tester.pump();
    verify(model.setStorage()).called(1);
  });

  testWidgets('invalid input', (tester) async {
    final model = buildManualStorageModel(isValid: false);
    await tester.pumpApp((_) => buildPage(model));

    expect(find.button(find.nextLabel), isDisabled);
  });

  testWidgets('too many primary partitions', (tester) async {
    const unusableGap = Gap(
      offset: 0,
      size: 1,
      usable: GapUsable.TOO_MANY_PRIMARY_PARTS,
    );
    final model = buildManualStorageModel(selectedGap: unusableGap);
    await tester.pumpApp((_) => buildPage(model));

    final context = tester.element(find.byType(ManualStoragePage));
    final l10n = UbuntuBootstrapLocalizations.of(context);

    final addButton = find.iconButton(Icons.add);
    expect(addButton, isDisabled);
    expect(
      find.ancestor(
        of: addButton,
        matching: find.byWidgetPredicate(
          (widget) =>
              widget is Tooltip &&
              widget.message == l10n.tooManyPrimaryPartitions,
        ),
      ),
      findsOneWidget,
    );
  });
}
