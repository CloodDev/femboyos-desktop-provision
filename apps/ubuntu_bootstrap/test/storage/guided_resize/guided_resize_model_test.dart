import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:subiquity_client/subiquity_client.dart';
import 'package:subiquity_test/subiquity_test.dart';
import 'package:ubuntu_bootstrap/pages/storage/guided_resize/guided_resize_model.dart';
import 'package:ubuntu_provision/services.dart';

import 'test_guided_resize.dart';

const ubuntu2110 = OsProber(
  long: 'Ubuntu 21.10',
  label: 'Ubuntu',
  version: '21.10',
  type: 'linux',
);

const ubuntu2204 = OsProber(
  long: 'Ubuntu 22.04 LTS',
  label: 'Ubuntu',
  version: '22.04 LTS',
  type: 'linux',
);

const windows10 = OsProber(
  long: 'Windows 10',
  label: 'WIN10',
  version: '10',
  type: 'chain',
);

void main() {
  test('init', () async {
    final service = MockStorageService();
    when(service.getStorage()).thenAnswer((_) async => [fakeDisk()]);

    final model = GuidedResizeModel(
      service,
      MockProductService(),
      MockSessionService(),
    );

    final gap1 = fakeGuidedStorageTargetUseGap(gap: fakeGap(size: 1));
    final gap2 = fakeGuidedStorageTargetUseGap(gap: fakeGap(size: 2));
    final gap3 = fakeGuidedStorageTargetUseGap(gap: fakeGap(size: 3));

    // single gap
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse(targets: [gap1]));
    when(service.hasBitLocker()).thenAnswer((_) async => false);
    expect(await model.init(), isFalse);
    verify(service.guidedTarget = gap1).called(1);

    // multiple gaps
    when(service.getGuidedStorage()).thenAnswer(
      (_) async => fakeGuidedStorageResponse(targets: [gap2, gap3, gap1]),
    );
    when(service.hasBitLocker()).thenAnswer((_) async => false);
    expect(await model.init(), isFalse);
    verify(service.guidedTarget = gap3).called(1);

    // resize
    when(service.getGuidedStorage()).thenAnswer(
      (_) async =>
          fakeGuidedStorageResponse(targets: [fakeGuidedStorageTargetResize()]),
    );
    when(service.hasBitLocker()).thenAnswer((_) async => false);
    expect(await model.init(), isTrue);
    verifyNever(service.guidedTarget = any);
  });

  test('load guided storage', () async {
    final service = MockStorageService();
    when(service.getStorage()).thenAnswer((_) async => [fakeDisk()]);
    when(service.getGuidedStorage()).thenAnswer(
      (_) async =>
          fakeGuidedStorageResponse(targets: [fakeGuidedStorageTargetResize()]),
    );
    when(service.hasBitLocker()).thenAnswer((_) async => false);

    final model = GuidedResizeModel(
      service,
      MockProductService(),
      MockSessionService(),
    );
    expect(model.selectedIndex, isNull);

    await model.init();
    expect(model.selectedIndex, 0);

    verify(service.getStorage()).called(1);
    verify(service.getGuidedStorage()).called(1);
  });

  test('save guided storage', () async {
    const partition1 = Partition(number: 1, size: 100);
    const partition2 = Partition(number: 2, size: 200);
    final disk = fakeDisk(id: 'id', partitions: [partition1, partition2]);
    final resize1 =
        fakeGuidedStorageTargetResize(diskId: disk.id, partitionNumber: 1);
    final resize2 = fakeGuidedStorageTargetResize(
      diskId: disk.id,
      partitionNumber: 2,
      maximum: 200,
    );

    final service = MockStorageService();
    when(service.getStorage()).thenAnswer((_) async => [disk]);
    when(service.getGuidedStorage()).thenAnswer(
      (_) async => fakeGuidedStorageResponse(targets: [resize1, resize2]),
    );
    when(service.hasBitLocker()).thenAnswer((_) async => false);

    final model = GuidedResizeModel(
      service,
      MockProductService(),
      MockSessionService(),
    );
    await model.init();

    model.selectStorage(1);
    model.resizeStorage(500);
    expect(model.selectedIndex, 1);

    await model.save();
    verify(service.guidedTarget = resize2.copyWith(newSize: 200)).called(1);
    verifyNever(service.setGuidedStorage());
  });

  test('reset storage', () async {
    final service = MockStorageService();
    when(service.resetStorage()).thenAnswer((_) async => []);
    when(service.getGuidedStorage())
        .thenAnswer((_) async => fakeGuidedStorageResponse());

    final model = GuidedResizeModel(
      service,
      MockProductService(),
      MockSessionService(),
    );
    await model.reset();
    verifyInOrder([service.resetStorage(), service.getGuidedStorage()]);
  });

  test('existing OS', () async {
    final service = MockStorageService();
    when(service.existingOS).thenReturn([ubuntu2110, ubuntu2204]);

    final model = GuidedResizeModel(
      service,
      MockProductService(),
      MockSessionService(),
    );
    expect(model.existingOS, equals([ubuntu2110, ubuntu2204]));
  });

  test('product info', () {
    final service = MockProductService();
    when(service.getProductInfo()).thenReturn(const ProductInfo(name: 'Foo'));

    final model = GuidedResizeModel(
      MockStorageService(),
      service,
      MockSessionService(),
    );
    expect(model.productInfo.name, 'Foo');
  });

  test('get storage', () async {
    const sda1 = Partition(number: 1, size: 1, os: ubuntu2110);
    const sda2 = Partition(number: 2, size: 2);
    final sda = fakeDisk(id: 'sda', partitions: [sda1, sda2]);

    const sdb1 = Partition(number: 1, size: 3, os: ubuntu2204);
    final sdb = fakeDisk(id: 'sdb', partitions: [sdb1]);

    final storage1 =
        fakeGuidedStorageTargetResize(diskId: 'sda', partitionNumber: 2);
    final storage2 =
        fakeGuidedStorageTargetResize(diskId: 'sdb', partitionNumber: 1);

    final service = MockStorageService();
    when(service.getStorage()).thenAnswer((_) async => [sda, sdb]);
    when(service.getGuidedStorage()).thenAnswer(
      (_) async => fakeGuidedStorageResponse(targets: [storage1, storage2]),
    );
    when(service.hasBitLocker()).thenAnswer((_) async => false);

    final model = GuidedResizeModel(
      service,
      MockProductService(),
      MockSessionService(),
    );
    expect(model.storageCount, isZero);
    expect(model.getDisk(0), isNull);
    expect(model.getDisk(1), isNull);
    expect(model.getPartition(0), isNull);
    expect(model.getPartition(1), isNull);
    expect(model.getAllPartitions(0), isNull);
    expect(model.getAllPartitions(1), isNull);
    expect(model.getOS(0), isNull);
    expect(model.getOS(1), isNull);

    await model.init();
    expect(model.storageCount, equals(2));
    expect(model.getDisk(0), equals(sda));
    expect(model.getDisk(1), equals(sdb));
    expect(model.getPartition(0), equals(sda2));
    expect(model.getPartition(1), equals(sdb1));
    expect(model.getAllPartitions(0), [sda1, sda2]);
    expect(model.getAllPartitions(1), [sdb1]);
    expect(model.getOS(0), ubuntu2110);
    expect(model.getOS(1), ubuntu2204);
  });

  test('select storage', () async {
    const sda1 = Partition(number: 1, size: 1, os: ubuntu2110);
    const sda2 = Partition(number: 2, size: 2);
    final sda = fakeDisk(id: 'sda', partitions: [sda1, sda2]);

    const sdb1 = Partition(number: 1, size: 3, os: ubuntu2204);
    final sdb = fakeDisk(id: 'sdb', partitions: [sdb1]);

    final storage1 =
        fakeGuidedStorageTargetResize(diskId: 'sda', partitionNumber: 2);
    final storage2 =
        fakeGuidedStorageTargetResize(diskId: 'sdb', partitionNumber: 1);

    final service = MockStorageService();
    when(service.getStorage()).thenAnswer((_) async => [sda, sdb]);
    when(service.getGuidedStorage()).thenAnswer(
      (_) async => fakeGuidedStorageResponse(targets: [storage1, storage2]),
    );
    when(service.hasBitLocker()).thenAnswer((_) async => false);

    final model = GuidedResizeModel(
      service,
      MockProductService(),
      MockSessionService(),
    );
    expect(model.storageCount, isZero);
    expect(model.selectedIndex, isNull);
    expect(model.selectedStorage, isNull);
    expect(model.selectedDisk, isNull);
    expect(model.selectedPartition, isNull);
    expect(model.selectedOS, isNull);

    await model.init();
    expect(model.selectedIndex, equals(0));
    expect(model.selectedStorage, equals(storage1));
    expect(model.selectedDisk, equals(sda));
    expect(model.selectedPartition, sda2);
    expect(model.selectedOS, ubuntu2110);

    var notified = 0;
    model.addListener(() => ++notified);

    model.selectStorage(1);
    expect(model.selectedIndex, equals(1));
    expect(model.selectedStorage, equals(storage2));
    expect(model.selectedDisk, equals(sdb));
    expect(model.selectedPartition, sdb1);
    expect(model.selectedOS, ubuntu2204);
    expect(notified, equals(1));

    model.selectStorage(1);
    expect(notified, equals(1));

    model.selectStorage(null);
    expect(notified, equals(2));
    expect(model.selectedIndex, isNull);
    expect(model.selectedStorage, isNull);
    expect(model.selectedDisk, isNull);
    expect(model.selectedPartition, isNull);
    expect(model.selectedOS, isNull);
  });

  test('resize storage', () async {
    const partition1 = Partition(number: 1, size: 11111);
    const partition2 = Partition(number: 2, size: 22222);
    final disk = fakeDisk(id: 'id', partitions: [partition1, partition2]);

    const storage1 = GuidedStorageTargetResize(
      diskId: 'id',
      partitionNumber: 1,
      newSize: 0,
      minimum: 111,
      recommended: 122,
      maximum: 133,
      allowed: [GuidedCapability.DIRECT],
    );

    const storage2 = GuidedStorageTargetResize(
      diskId: 'id',
      partitionNumber: 2,
      newSize: 0,
      minimum: 211,
      recommended: 222,
      maximum: 233,
      allowed: [GuidedCapability.DIRECT],
    );

    final service = MockStorageService();
    when(service.getStorage()).thenAnswer((_) async => [disk]);
    when(service.getGuidedStorage()).thenAnswer(
      (_) async => fakeGuidedStorageResponse(targets: [storage1, storage2]),
    );
    when(service.hasBitLocker()).thenAnswer((_) async => false);

    final model = GuidedResizeModel(
      service,
      MockProductService(),
      MockSessionService(),
    );
    await model.init();
    expect(model.selectedIndex, equals(0));

    expect(model.currentSize, equals(storage1.recommended));
    expect(model.minimumSize, equals(storage1.minimum));
    expect(model.maximumSize, equals(storage1.maximum));
    expect(model.totalSize, equals(partition1.size));

    model.resizeStorage(123);
    expect(model.currentSize, equals(123));

    model.selectStorage(1);
    expect(model.selectedIndex, equals(1));
    expect(model.currentSize, equals(storage2.recommended));
    expect(model.minimumSize, equals(storage2.minimum));
    expect(model.maximumSize, equals(storage2.maximum));
    expect(model.totalSize, equals(partition2.size));

    model.resizeStorage(223);
    expect(model.currentSize, equals(223));

    model.selectStorage(0);
    expect(model.selectedIndex, equals(0));
    expect(model.currentSize, equals(storage1.recommended));
  });
}
