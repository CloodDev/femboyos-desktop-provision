import 'ubuntu_bootstrap_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class UbuntuBootstrapLocalizationsKa extends UbuntuBootstrapLocalizations {
  UbuntuBootstrapLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get appTitle => 'Ubuntu Desktop-ის დაყენების პროგრამა';

  @override
  String windowTitle(String RELEASE) {
    return 'FemboyOS-ის დაყენება';
  }

  @override
  String get autoinstallDirectTitle => 'ავტომატური დაყენება';

  @override
  String get autoinstallDirectHeader => 'ავტოდაყენების ფაილის შემოტანა';

  @override
  String get autoinstallDirectUrlLabel => 'შეგიძლიათ, შეიყვანოთ ავტოდაყენების ფაილის URL:';

  @override
  String get autoinstallDirectFileLabel => 'ან აირჩიეთ ლოკალური ფაილი:';

  @override
  String get autoinstallDirectFileButtonLabel => 'ფაილის არჩევა...';

  @override
  String get autoinstallDirectFileClearButtonLabel => 'ფაილის გასუფთავება';

  @override
  String get autoinstallDirectFilePickerTitle => 'ფაილის არჩევა';

  @override
  String get autoinstallDirectFilePickerFilterLabel => 'YAML ფაილები';

  @override
  String get autoinstallDirectImportButtonLabel => 'შემოტანა';

  @override
  String get autoinstallDirectErrorNetworkTitle => 'Autoinstall file is not reachable';

  @override
  String get autoinstallDirectErrorNetworkBody => 'Check the URL is correct, test your internet connection, or try later.';

  @override
  String get autoinstallDirectErrorInvalidUrlTitle => 'არასწორი URL';

  @override
  String get autoinstallDirectErrorInvalidUrlBody => 'Check the URL is correct or select a local file.';

  @override
  String get autoinstallDirectErrorInvalidContentTitle => 'Invalid autoinstall file';

  @override
  String get autoinstallDirectErrorInvalidContentBody => 'Check the file or provide a different one.';

  @override
  String get autoinstallDirectErrorFileSystemTitle => 'Autoinstall file is not readable';

  @override
  String get autoinstallDirectErrorFileSystemBody => 'Check your permissions or provide a different file.';

  @override
  String get autoinstallDirectErrorUnkownTitle => 'უცნობი შეცდომა';

  @override
  String get autoinstallTitle => 'დაყენების ტიპი';

  @override
  String autoinstallHeader(String DISTRO) {
    return 'How would you like to install FemboyOS?';
  }

  @override
  String get autoinstallInstructions => 'Enter the autoinstall.yaml URL or local file path:';

  @override
  String get autoinstallInteractiveOption => 'ინტერაქტიური დაყენება';

  @override
  String get autoinstallInteractiveDescription => 'For users who want to be guided step by step through the installation.';

  @override
  String get autoinstallDirectOption => 'Automated with autoinstall file';

  @override
  String get autoinstallDirectDescription => 'For advanced users who have an autoinstall.yaml for consistent and repeatable system setups.';

  @override
  String get autoinstallLandscapeOption => 'Automated with Landscape';

  @override
  String get autoinstallLandscapeDescription => 'For users in organizations that provide an autoinstall file via Landscape.';

  @override
  String get changeButtonText => 'შეცვლა';

  @override
  String get quitButtonText => 'დაყენებიდან გასვლა';

  @override
  String loadingPageTitle(String DISTRO) {
    return 'მოგესალმებათ FemboyOS';
  }

  @override
  String loadingHeader(String DISTRO) {
    return 'FemboyOS-ის მომზადება…';
  }

  @override
  String get warningLabel => 'გაფრთხილება:';

  @override
  String tryOrInstallTitle(String DISTRO) {
    return 'სცადეთ ან დააყენეთ FemboyOS';
  }

  @override
  String tryOrInstallHeader(String DISTRO) {
    return 'What do you want to do with FemboyOS?';
  }

  @override
  String get tryOrInstallRepairOption => 'დაყენებული ვერსიის შეკეთება';

  @override
  String get tryOrInstallRepairDescription => 'Repairing will reinstall all installed software without touching documents or settings.';

  @override
  String tryOption(String RELEASE) {
    return 'FemboyOS-ის ცდა';
  }

  @override
  String tryDescription(String RELEASE) {
    return 'You can try FemboyOS without making any changes to your computer.';
  }

  @override
  String installOption(String RELEASE) {
    return 'FemboyOS-ის დაყენება';
  }

  @override
  String installDescription(String RELEASE) {
    return 'Install FemboyOS alongside (or instead of) your current operating system. This shouldn\'t take too long.';
  }

  @override
  String tryOrInstallReleaseNotesLabel(String url) {
    return 'You may wish to read the <a href=\"$url\">release notes</a>.';
  }

  @override
  String get rstTitle => 'RST ჩართულია';

  @override
  String get rstHeader => 'You must disable RST to continue installation';

  @override
  String get rstDisable => 'Your computer uses Intel RST (Rapid Storage Technology). You can disable RST either in:';

  @override
  String get rstDisableWindows => 'Windows, if you are using a dual boot setup with Windows';

  @override
  String get rstDisableBios => 'The BIOS settings';

  @override
  String rstInstructions(String url) {
    return 'For instructions, scan the QR code on another device or visit: <a href=\"https://$url\">$url</a>';
  }

  @override
  String get configureSecureBootTitle => 'Secure Boot-ის მორგება';

  @override
  String get configureSecureBootDescription => 'You\'ve chosen to install third-party driver software. This requires turning off Secure Boot.\nTo do this, you need to choose a security key now, and enter it when the system restarts.';

  @override
  String get configureSecureBootOption => 'Secure Boot-ის მორგება';

  @override
  String get chooseSecurityKey => 'Choose a security key';

  @override
  String get confirmSecurityKey => 'Confirm the security key';

  @override
  String get dontInstallDriverSoftwareNow => 'Don\'t install the driver software for now';

  @override
  String get dontInstallDriverSoftwareNowDescription => 'You can install it later from Software & Updates.';

  @override
  String get configureSecureBootSecurityKeyRequired => 'Security key is required';

  @override
  String get secureBootSecurityKeysDontMatch => 'Security keys do not match';

  @override
  String get showSecurityKey => 'ჩვენება';

  @override
  String get hideSecurityKey => 'დამალვა';

  @override
  String get updatesOtherSoftwarePageTitle => 'აპლიკაციები';

  @override
  String get updatesOtherSoftwarePageDescription => 'What apps would you like to install to start with?';

  @override
  String get codecsAndDriversPageTitle => 'თქვენი კომპიუტერის ოპტიმიზაცია';

  @override
  String get codecsAndDriversPageDescription => 'Install recommended proprietary software?';

  @override
  String codecsAndDriversPageBody(String DISTRO) {
    return 'FemboyOS ships with no proprietary software by default. Installing additional software may improve your computer\'s performance.';
  }

  @override
  String get codecsAndDriversNvidiaNote => 'NVIDIA graphics card detected';

  @override
  String get codecsAndDriversNvidiaBody => 'For the best performance of NVIDIA graphic cards, installing additional drivers is strongly recommended.';

  @override
  String get fullInstallationTitle => 'გაფართოებული არჩევანი';

  @override
  String get fullInstallationSubtitle => 'An offline-friendly selection of office tools, utilities and web browser.';

  @override
  String get minimalInstallationTitle => 'ნაგულისხმევი არჩევანი';

  @override
  String get minimalInstallationSubtitle => 'Just the essentials, web browser and basic utilities.';

  @override
  String get otherOptions => 'სხვა პარამეტრები';

  @override
  String get installThirdPartyTitle => 'Install third-party software for graphics and Wi-Fi hardware, as well as additional media formats';

  @override
  String get installThirdPartySubtitle => 'This software is subject to license terms included with its documentation. Some are proprietary.';

  @override
  String get installDriversTitle => 'Install third-party software for graphics and Wi-Fi hardware';

  @override
  String get installDriversSubtitle => 'Including but not limited to NVIDIA drivers and similar';

  @override
  String get installCodecsTitle => 'Download and install support for additional media formats';

  @override
  String get installCodecsSubtitle => 'Including but not limited to MP3, MP4, MOV and similar';

  @override
  String get batteryWarning => 'The computer is not plugged in to a power source.';

  @override
  String get offlineWarning => 'You are currently offline';

  @override
  String get choosePassphraseTitle => 'დისკის საკვანძო ფრაზა';

  @override
  String get choosePassphraseHeader => 'საკვანძო ფრაზის შექმნა';

  @override
  String get choosePassphraseBody => 'You need a passphrase to encrypt your files. You will be prompted for your passphrase every time you turn on your computer.';

  @override
  String get choosePassphraseHint => 'აირჩიეთ საკვანძო ფრაზა';

  @override
  String get choosePassphraseConfirmHint => 'დაადასტურეთ საკვანძო ფრაზა';

  @override
  String get choosePassphraseRequired => 'A passphrase is required';

  @override
  String get choosePassphraseMismatch => 'The passphrases do not match';

  @override
  String get choosePassphraseInfoHeader => 'Store your passphrase somewhere safe';

  @override
  String get choosePassphraseInfoBody => 'If you lose your passphrase, you will lose all your data.';

  @override
  String get chooseOptionalPassphraseHeader => 'Create a passphrase (optional)';

  @override
  String get chooseOptionalPassphraseBody => 'A passphrase can help protect your data even if your hardware gets compromised. You will need to enter the passphrase every time you turn on your computer. You will not be able to remove it later';

  @override
  String get chooseOptionalPassphraseInfoHeader => 'Store your passphrase and recovery key somewhere safe';

  @override
  String get chooseOptionalPassphraseInfoBody => 'If you lose your passphrase, you will lose all your data. The passphrase does not replace the recovery key or your user password.';

  @override
  String get createPassphrase => 'საკვანძო ფრაზის შექმნა';

  @override
  String get confirmPassphrase => 'დაადასტურეთ საკვანძო ფრაზა';

  @override
  String get installationTypeTitle => 'დისკის მორგება';

  @override
  String installationTypeHeader(String DISTRO) {
    return 'How do you want to install FemboyOS?';
  }

  @override
  String installationTypeOSDetected(String os) {
    return 'This computer currently has $os on it. What would you like to do?';
  }

  @override
  String installationTypeDualOSDetected(String os1, String os2) {
    return 'This computer currently has $os1 and $os2 on it. What would you like to do?';
  }

  @override
  String get installationTypeMultiOSDetected => 'This computer currently has multiple operating systems on it. What would you like to do?';

  @override
  String get installationTypeNoOSDetected => 'This computer currently has no detected operating systems. What would you like to do?';

  @override
  String installationTypeErase(String DISTRO) {
    return 'Erase disk and install FemboyOS';
  }

  @override
  String get installationTypeEraseInfo => 'All data and partitions on the disk will be erased, including operating systems.';

  @override
  String get installationTypeAdvancedLabel => 'დამატებითი ფუნქციები...';

  @override
  String get installationTypeAdvancedTitle => 'დამატებითი ფუნქციები';

  @override
  String get installationTypeExperimental => 'ექსპერიმენტული';

  @override
  String get installationTypeNone => 'არც-ერთი';

  @override
  String get installationTypeNoneInfo => 'Standard file system without encryption.';

  @override
  String get installationTypeNoneSelected => 'არჩეული არაფერია';

  @override
  String get installationTypeLVM => 'LVM-ის გამოყენება';

  @override
  String get installationTypeLVMSelected => 'არჩეულია LVM';

  @override
  String get installationTypeLVMEncryption => 'Encrypt with a passphrase';

  @override
  String get installationTypeLVMEncryptionInfo => 'You will need to enter a passphrase every time you turn on your computer. This uses LUKS encryption with LVM.';

  @override
  String get installationTypeLVMEncryptionSelected => 'LVM and encryption selected';

  @override
  String get installationTypeEncryptInfo => 'You will choose a security key in the next step.';

  @override
  String get installationTypeZFS => 'Use ZFS without encryption';

  @override
  String get installationTypeZFSEncryption => 'Encrypt with a passphrase using ZFS';

  @override
  String get installationTypeZFSEncryptionInfo => 'Native encryption with ZFS. You will need to enter a passphrase every time you turn on your computer.';

  @override
  String get installationTypeZFSSelected => 'არჩეულია ZFS';

  @override
  String get installationTypeZFSEncryptionSelected => 'ZFS and encryption selected';

  @override
  String get installationTypeTPM => 'Use hardware-backed encryption';

  @override
  String installationTypeTPMInfo(String DISTRO, String url) {
    return '<a href=\"$url\">Read about TPM encryption</a> before you choose this option. This may not work with your hardware or future FemboyOS releases.';
  }

  @override
  String get installationTypeTPMSelected => 'არჩეულია TPM';

  @override
  String installationTypeReinstall(String os) {
    return 'Erase $os and reinstall';
  }

  @override
  String installationTypeReinstallWarning(String color, String os) {
    return '<font color=\"$color\">Warning:</font> This will delete all your $os programs, documents, photos, music, and any other files.';
  }

  @override
  String installationTypeAlongside(String product, String os) {
    return 'Install $product alongside $os';
  }

  @override
  String installationTypeAlongsideDual(String product, String os1, String os2) {
    return 'Install $product alongside $os1 and $os2';
  }

  @override
  String installationTypeAlongsideMulti(String product) {
    return 'Install $product alongside existing operating systems';
  }

  @override
  String installationTypeAlongsideUnknown(String product) {
    return 'Install $product alongside other partitions';
  }

  @override
  String installationTypeAlongsideInfo(String product) {
    return 'Select a partition to resize and create space for $product. You can choose your operating system during boot.';
  }

  @override
  String installationTypeEraseAndInstall(String os, String product) {
    return 'Erase $os and install $product';
  }

  @override
  String installationTypeEraseAndInstallInfo(String os) {
    return 'All files and data from the existing $os installation will be permanently deleted.';
  }

  @override
  String get installationTypeManual => 'ხელით დაყენება';

  @override
  String installationTypeManualInfo(String DISTRO) {
    return 'For advanced users seeking customized disk setups.';
  }

  @override
  String selectGuidedStoragePageTitle(String DISTRO) {
    return 'Erase disk and install FemboyOS';
  }

  @override
  String get selectGuidedStorageInfo => 'Start from scratch on your selected disk.';

  @override
  String get selectGuidedStorageDriveDropdownLabel => 'აირჩიეთ დისკი:';

  @override
  String get selectGuidedStoragePartitionDropdownLabel => 'აირჩიეთ დანაყოფი:';

  @override
  String get selectGuidedStorageInfoLabel => 'The entire disk will be used:';

  @override
  String get selectGuidedStorageInstallNow => 'დაყენება';

  @override
  String guidedStoragePageHeader(String DISTRO) {
    return 'Choose where to install FemboyOS';
  }

  @override
  String get installAlongsideSpaceDivider => 'Allocate drive space by dragging the divider below:';

  @override
  String installAlongsideHiddenPartitions(int num, String url) {
    return '$num smaller partitions are hidden, use the <a href=\"$url\">advanced partitioning tool</a> for more control';
  }

  @override
  String get installAlongsideResizePartition => 'დანაყოფის ზომის შეცვლა';

  @override
  String get installAlongsideAllocateSpace => 'ადგილის გამოყოფა';

  @override
  String get installAlongsideFiles => 'ფაილები';

  @override
  String get installAlongsidePartition => 'დანაყოფი:';

  @override
  String get installAlongsideSize => 'ზომა:';

  @override
  String get installAlongsideAvailable => 'ხელმისაწვდომი:';

  @override
  String get allocateDiskSpace => 'ხელით დაყოფა';

  @override
  String get allocateDiskSpaceInvalidMountPointSlash => 'Mount points must start with \"/\"';

  @override
  String get allocateDiskSpaceInvalidMountPointSpace => 'Mount points cannot contain spaces';

  @override
  String allocateDiskSpaceInvalidMountPointFormat(Object format, Object mountpoint) {
    return '$format is not a supported filesystem for $mountpoint';
  }

  @override
  String get diskHeadersDevice => 'მოწყობილობა';

  @override
  String get diskHeadersType => 'ტიპი';

  @override
  String get diskHeadersMountPoint => 'მიმაგრების წერტილი';

  @override
  String get diskHeadersSize => 'ზომა';

  @override
  String get diskHeadersUsed => 'გამოყენებულია';

  @override
  String get diskHeadersSystem => 'სისტემა';

  @override
  String get diskHeadersFormat => 'ფორმატი';

  @override
  String get freeDiskSpace => 'თავისუფალი ადგილი';

  @override
  String get newPartitionTable => 'ახალი დანაყოფების ცხრილი';

  @override
  String get newPartitionTableConfirmationTitle => 'ახალი ცარიელი დანაყოფი';

  @override
  String get newPartitionTableConfirmationMessage => 'Creating a new partition table on an entire device will remove all of its current partitions. This operation can be undone if needed.';

  @override
  String get tooManyPrimaryPartitions => 'Too many primary partitions';

  @override
  String get partitionLimitReached => 'ზღვარი მიღწეულია';

  @override
  String get bootLoaderDevice => 'Device for boot loader installation';

  @override
  String get partitionCreateTitle => 'დანაყოფის შექმნა';

  @override
  String get partitionEditTitle => 'დანაყოფის ჩასწორება';

  @override
  String get partitionSizeLabel => 'ზომა:';

  @override
  String get partitionTypeLabel => 'Type for the new partition:';

  @override
  String get partitionTypePrimary => 'ძირითადი';

  @override
  String get partitionTypeLogical => 'ლოგიკური';

  @override
  String get partitionLocationLabel => 'Location for the new partition:';

  @override
  String get partitionLocationBeginning => 'Beginning of this space';

  @override
  String get partitionLocationEnd => 'End of this space';

  @override
  String get partitionFormatLabel => 'გამოიყენება, როგორც:';

  @override
  String get partitionFormatNone => 'დაუფორმატებლად დატოვება';

  @override
  String partitionFormatKeep(String format) {
    return 'Leave formatted as $format';
  }

  @override
  String get partitionErase => 'დანაყოფის დაფორმატება';

  @override
  String get partitionMountPointLabel => 'მიმაგრების წერტილი:';

  @override
  String get confirmPageTitle => 'დაყენებისთვის მზადაა';

  @override
  String get confirmHeader => 'გადახედეთ თქენს არჩევანს';

  @override
  String get confirmDiskEncryptionLVM => 'LUKS (LVM)';

  @override
  String get confirmDiskEncryptionZFS => 'LUKS (ZFS)';

  @override
  String get confirmDiskEncryptionTPM => 'TPM';

  @override
  String get confirmDiskEncryptionNone => 'არცერთი';

  @override
  String get confirmDevicesTitle => 'მოწყობილობები';

  @override
  String get confirmEntryApplications => 'აპლიკაციები';

  @override
  String get confirmEntryDiskSetup => 'დისკის მორგება';

  @override
  String get confirmEntryDiskEncryption => 'დისკის დაშიფვრა';

  @override
  String get confirmEntryInstallationDisk => 'დაყენების დისკი';

  @override
  String get confirmEntryProprietarySoftware => 'ფასიანი პროგრამები';

  @override
  String get confirmSectionGeneralTitle => 'ზოგადი';

  @override
  String get confirmSectionSecurityAndMoreTitle => 'უსაფრთხოება & მეტი';

  @override
  String get confirmPartitionsTitle => 'დანაყოფები';

  @override
  String get confirmPartitionTables => 'The partition tables of the following devices are changed:';

  @override
  String confirmPartitionTable(String serial, String path) {
    return '$serial ($path)';
  }

  @override
  String get confirmProprietarySoftwareCodecs => 'კოდეკები';

  @override
  String get confirmProprietarySoftwareCodecsDrivers => 'კოდეკები და დრაივერები';

  @override
  String get confirmProprietarySoftwareDrivers => 'დრაივერები';

  @override
  String get confirmInstallButton => 'დაყენება';

  @override
  String get confirmTableErased => 'Erased';

  @override
  String get confirmTableUnchanged => 'Unchanged';

  @override
  String confirmTableResized(String oldsize, String newsize) {
    return 'Resized from $oldsize to $newsize';
  }

  @override
  String confirmTableCreatedFormattedMounted(String format, String mountpoint) {
    return 'Created and formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableFormattedMounted(String format, String mountpoint) {
    return 'Formatted as $format used for $mountpoint';
  }

  @override
  String confirmTableMounted(String mountpoint) {
    return 'Used for $mountpoint';
  }

  @override
  String confirmTableFormatted(String format) {
    return 'Formatted as $format';
  }

  @override
  String get installationCompleteTitle => 'დაყენება დასრულდა';

  @override
  String readyToUse(String system) {
    return '$system is installed and ready to use';
  }

  @override
  String rebootToConfigure(String system) {
    return '**$system** has been copied to the disk';
  }

  @override
  String restartInto(String system) {
    return '$system-ში გადატვირთვა';
  }

  @override
  String get restartWarningBody => 'Restart to complete the installation or continue testing.\nAny changes you make will not be saved.';

  @override
  String get rebootToConfigureWarning => 'You have to restart the computer to continue the installation process.';

  @override
  String get shutdown => 'გამორთვა';

  @override
  String get restartNow => 'გადატვირთვა ახლავე';

  @override
  String get continueTesting => 'შემოწმების გაგრძელება';

  @override
  String get bitlockerInfoTitle => 'BitLocker detected';

  @override
  String get bitlockerInfoDescription => 'One or more partitions are encrypted with BitLocker.';

  @override
  String get bitlockerInfoDisable => 'To install alongside Windows, disable BitLocker in Windows.';

  @override
  String get bitlockerInfoRecovery => 'Windows may request recovery keys on boot after installation.';

  @override
  String bitlockerInfoInstructions(String url) {
    return 'For instructions, visit the <a href=\"$url\">BitLocker guide</a>.';
  }

  @override
  String get bitlockerWarningTitle => 'You may lose all your data without BitLocker recovery keys';

  @override
  String get restartComputer => 'Restart computer';

  @override
  String get restartComputerTitle => 'Restart computer?';

  @override
  String get restartIntoWindows => 'Windows-ში გადატვირთვა';

  @override
  String get restartIntoWindowsTitle => 'გადავიტვირთო Windows-ში?';

  @override
  String restartIntoWindowsDescription(String DISTRO) {
    return 'Are you sure you want to restart your computer? You will need to restart the FemboyOS installation later to finish installing FemboyOS.';
  }

  @override
  String installationSlidesTitle(String RELEASE) {
    return 'მოგესალმებათ FemboyOS';
  }

  @override
  String get installationSlidesAvailable => 'ხელმისაწვდომია:';

  @override
  String get installationSlidesIncluded => 'ჩასმულია:';

  @override
  String get installationSlidesWelcomeTitle => 'Fast, free and full of new features';

  @override
  String installationSlidesWelcomeHeader(String DISTRO) {
    return 'The latest version of FemboyOS makes computing easier than ever.';
  }

  @override
  String installationSlidesWelcomeBody(String RELEASE) {
    return 'Whether you\'re a developer, creator, gamer or administrator you\'ll find new tools to improve your productivity and enhance your experience in FemboyOS.';
  }

  @override
  String get installationSlidesSoftwareTitle => 'All the applications you need';

  @override
  String installationSlidesSoftwareBody(String DISTRO) {
    return 'Install, manage and update all your apps in Ubuntu Software, including thousands of applications from both the Snap Store and FemboyOS archive.';
  }

  @override
  String get installationSlidesDevelopmentTitle => 'Develop with the best of open source';

  @override
  String installationSlidesDevelopmentBody(String DISTRO) {
    return 'FemboyOS is the ideal workstation for app or web development, data science and AI/ML as well as devops and administration. Every FemboyOS release includes the latest toolchains and supports all major IDEs.';
  }

  @override
  String get installationSlidesCreativityTitle => 'განავრცეთ თქვენი კრეატიულობა';

  @override
  String installationSlidesCreativityBody(String DISTRO) {
    return 'If you\'re an animator, designer, video creator or game developer it\'s easy to bring your workflows to FemboyOS with support for open source and industry standard software and applications.';
  }

  @override
  String get installationSlidesGamingTitle => 'საუკეთესო თამაშებისთვის';

  @override
  String installationSlidesGamingBody(String DISTRO) {
    return 'FemboyOS supports the latest NVIDIA and Mesa drivers to improve performance and compatibility. Thousands of Windows titles play great on FemboyOS via applications like Steam with no additional configuration.';
  }

  @override
  String get installationSlidesSecurityTitle => 'კონფიდენციალური და უსაფრთხო';

  @override
  String installationSlidesSecurityBody(String DISTRO) {
    return 'FemboyOS provides all of the tools you need to stay private and secure online. With built in firewall and VPN support and a host of privacy-centric applications to ensure you are in full control of your data.';
  }

  @override
  String installationSlidesSecurityLts(String DISTRO) {
    return 'All FemboyOS LTS releases come with five years of security patching included, extending to ten years with an Ubuntu Pro subscription.';
  }

  @override
  String get installationSlidesProductivityTitle => 'Power up your productivity';

  @override
  String installationSlidesProductivityBody(String DISTRO) {
    return 'FemboyOS Desktop includes LibreOffice, a suite of Microsoft Office compatible open source applications for documents, spreadsheets and presentations. Popular collaboration tools are also available.';
  }

  @override
  String get installationSlidesAccessibilityTitle => 'წვდომა ყველასთვის';

  @override
  String installationSlidesAccessibilityBody(String DISTRO) {
    return 'At the heart of the FemboyOS philosophy is the belief that computing is for everyone. With advanced accessibility tools and options to change language, colours and text size, FemboyOS makes computing easy - whoever and wherever you are.';
  }

  @override
  String get installationSlidesAccessibilityOrca => 'ეკრანის წამკითხავი Orca';

  @override
  String get installationSlidesAccessibilityLanguages => 'ენის მხარდაჭერა';

  @override
  String get installationSlidesSupportTitle => 'დახმარება და მხარდაჭერა';

  @override
  String installationSlidesSupportHeader(String DISTRO) {
    return 'The official FemboyOS documentation is available both online and via the Help icon in the dock.';
  }

  @override
  String get installationSlidesSupportCommunity => 'Ask Ubuntu covers a range of questions and responses and the Ubuntu Discourse provides guides and discussions for new and experienced users.';

  @override
  String get installationSlidesSupportEnterprise => 'For enterprise users Canonical provides commercial support to make it easy to onboard and manage Ubuntu securely in the workplace.';

  @override
  String get installationSlidesSupportResources => 'სასარგებლო რესურსები:';

  @override
  String get installationSlidesSupportDocumentation => 'ოფიციალური დოკუმენტაცია';

  @override
  String get installationSlidesSupportUbuntuPro => 'Enterprise-grade 24/7 support with Ubuntu Pro';

  @override
  String get copyingFiles => 'ფაილების კოპირება…';

  @override
  String get installingSystem => 'მიმდინარეობს სისტემის დაყენება…';

  @override
  String get configuringSystem => 'Setting up the system…';

  @override
  String get installationFailed => 'დაყენება ჩავარდა';

  @override
  String get notEnoughDiskSpaceTitle => 'Not enough disk space';

  @override
  String notEnoughDiskSpaceUbuntu(String DISTRO) {
    return 'Not enough disk space to install FemboyOS';
  }

  @override
  String notEnoughDiskSpaceBody(String DISTRO) {
    return 'The selected disk does not have enough disk space to install FemboyOS. Quit the installer to make space available or select another disk.';
  }

  @override
  String get notEnoughDiskSpaceAvailable => 'ხელმისაწვდომია:';

  @override
  String get notEnoughDiskSpaceRequired => 'აუცილებელია:';

  @override
  String get refreshPageTitle => 'ხელმისაწვდომია განახლებები';

  @override
  String get refreshHeader => 'An update is available for the installer';

  @override
  String get refreshUpdateNow => 'განახლება ახლა';

  @override
  String get refreshInfo => 'Update to the latest version for improved reliability and more features.';

  @override
  String get refreshReady => 'განახლება მზადაა';

  @override
  String refreshCurrent(String snap, String version) {
    return 'The current $snap version is $version.';
  }

  @override
  String refreshInstall(String version) {
    return 'Update to version $version';
  }

  @override
  String refreshUpToDate(String version) {
    return 'The current version $version is up-to-date.';
  }

  @override
  String refreshUpdating(String snap) {
    return '$snap-ის განახლება...';
  }

  @override
  String get refreshRestart => 'Please close the installer and relaunch to continue';

  @override
  String get refreshCloseLabel => 'დაყენების პროგრამის დახურვა';

  @override
  String refreshSnapPrerequisites(String snap) {
    return '$snap-ის მოთხოვნების გადამოწმება...';
  }

  @override
  String refreshSnapRefresh(String snap) {
    return '$snap-ის მონაცემების განახლება...';
  }

  @override
  String refreshSnapCheckRerefresh(String snap) {
    return '$snap-ის მონაცემების განახლების შემოწმება...';
  }

  @override
  String refreshSnapPrepare(String snap) {
    return '$snap-ის მომზადება...';
  }

  @override
  String refreshSnapDownload(String snap) {
    return '$snap-ის გადმოწერა...';
  }

  @override
  String refreshSnapValidate(String snap) {
    return '$snap-ის გადამოწმება...';
  }

  @override
  String refreshSnapMount(String snap) {
    return '$snap-ის მიმაგრება...';
  }

  @override
  String refreshSnapStopServices(String snap) {
    return '$snap-ის სერვისების გაჩერება...';
  }

  @override
  String refreshSnapRemoveAliases(String snap) {
    return '$snap-ის ფსევდონიმების წაშლა...';
  }

  @override
  String refreshSnapUnlink(String snap) {
    return '$snap-ის მოხსნა...';
  }

  @override
  String refreshSnapUpdateAssets(String snap) {
    return '$snap-ის მონაცემების განახლება...';
  }

  @override
  String refreshSnapUpdateKernelCommandLine(String snap) {
    return 'Updating $snap kernel command line...';
  }

  @override
  String refreshSnapCopyData(String snap) {
    return '$snap-ის მონაცემების კოპირება...';
  }

  @override
  String refreshSnapSetupProfiles(String snap) {
    return 'Setting up $snap security profiles...';
  }

  @override
  String refreshSnapLink(String snap) {
    return '$snap-ის მიერთება...';
  }

  @override
  String refreshSnapAutoConnect(String snap) {
    return 'Connecting $snap plugs and slots...';
  }

  @override
  String refreshSnapSetAutoAliases(String snap) {
    return 'Setting automatic $snap aliases...';
  }

  @override
  String refreshSnapSetupAliases(String snap) {
    return 'Setting up $snap aliases...';
  }

  @override
  String refreshSnapStartServices(String snap) {
    return '$snap-ის სერვისების გაშვება...';
  }

  @override
  String refreshSnapCleanup(String snap) {
    return '$snap-ის მოსუფთავება...';
  }

  @override
  String get recoveryKeyTitle => 'TPM-ის აღდგენის გასაღები';

  @override
  String get recoveryKeyHeader => 'Get a recovery key';

  @override
  String get recoveryKeyInfoHeader => 'You may lose all your data without a recovery key';

  @override
  String recoveryKeyInfoBody(String distro) {
    return 'Get a recovery key as soon as you first log into FemboyOS and store it somewhere safe.';
  }

  @override
  String get recoveryKeyCommand => 'To get a recovery key, complete the installation, restart your computer, and run this command in the terminal:';

  @override
  String get recoveryKeyStorageAdvice => 'Store the recovery key somewhere safe. Use it to decrypt the disk in case of certain system changes. For example, you may need it if you change the components in your computer or update firmware.';

  @override
  String get recoveryKeyConfirmation => 'I understand I may lose all my data if I don\'t have a recovery key';

  @override
  String landscapeMagicAttachInstructions(Object url) {
    return 'Scan the QR code or enter the code below at <a href=\"https://$url\">$url</a>';
  }

  @override
  String get landscapePageTitle => 'ავტომატური დაყენება';

  @override
  String get landscapeHeader => 'Log in to Landscape';

  @override
  String get landscapeDomainHeader => 'Enter Landscape domain (FQDN)';

  @override
  String get landscapeDomainHintText => 'Landscape domain (FQDN)';

  @override
  String get landscapeDomainInstructions => 'Provide your organization\'s Landscape domain to log in and fetch an autoinstall file. You can get the FQDN from your IT support.';

  @override
  String get landscapeDomainTextField => 'Landscape domain (FQDN)';

  @override
  String get next => 'შემდეგი';

  @override
  String get landscapeDomainInvalidDomainWarning => 'Invalid domain, please check or contact your IT support';

  @override
  String get landscapeDomainNoInternetTitleWarning => 'Connect to the internet to continue';

  @override
  String get landscapeDomainNoInternetDescriptionWarning => 'Internet is needed to fetch the autoinstall file from Landscape';

  @override
  String get landscapeCodeExpiredWarning => 'Code expired, please try again';

  @override
  String get landscapeLoginFailedWarning => 'Login failed, please try again';

  @override
  String get landscapeErrorPageTitle => 'Automated install is not available for your account';

  @override
  String get landscapeErrorPageBody => 'Contact your IT support or try a different installation option.';

  @override
  String landscapeErrorPageCode(String code) {
    return 'Error code: $code';
  }

  @override
  String get landscapeConfirmPageSuccessInfoTitle => 'Ubuntu will install with the configuration provided by your organization';

  @override
  String get landscapeConfirmPageSuccessInfoContent => 'You can review the autoinstall file imported from Landscape below.';
}
