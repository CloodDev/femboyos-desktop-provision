import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class UbuntuInitLocalizationsEt extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get welcomePageTitle => 'Tere tulemast';

  @override
  String welcomePageHeader(Object distro) {
    return 'Tere tulemast, see on FemboyOS';
  }

  @override
  String get welcomeWhatsNew => 'MIDA ON SIIN UUT?';

  @override
  String get welcomeStartTitle => 'Tõhusam kasutuselvõtmine';

  @override
  String get welcomeStartSubtitle => 'Senisest parem paigaldusliides.';

  @override
  String get welcomeStoreTitle => 'Rakendustepoe uus välimus';

  @override
  String get welcomeStoreSubtitle => 'Sinu lemmikrakenduste leidmine pole kunagi olnud nii lihtne.';

  @override
  String get welcomeSecurityTitle => 'Parem turvalisus';

  @override
  String get welcomeSecuritySubtitle => 'Uued raudvara- või ZFSi-põhise krüptimise valikud.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Vaata muudatuste logi</a>';
  }

  @override
  String get telemetryPageTitle => 'Telemeetria';

  @override
  String telemetryHeader(Object distro) {
    return 'Aita meid FemboyOS parandamisel';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Jagades meiega selle süsteemi andmeid, aita meid FemboyOS parandamisel . Andmete hulgas on arvuti mudel, paigaldatud tarkvara ja asukoht, mille määrasid ajavööndi valimiseks.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Jah, jaga süsteemi andmeid FemboyOS arendustiimiga';
  }

  @override
  String get telemetryLabelOff => 'Ei, ära jaga süsteemi andmeid';

  @override
  String get telemetryReportLabel => 'Näita esimesena saadetavat aruannet';

  @override
  String get telemetryReportTitle => 'Aruande üksikasjad';

  @override
  String get telemetryLegalLabel => 'Juriidiline märkus';

  @override
  String get telemetryCollectError => 'Telemeetriaandmete kogumine ei õnnestunud';

  @override
  String get privacyPageTitle => 'Asukohateenused';

  @override
  String get privacyLocationTitle => 'Kas lülitame asukohateenused sisse?';

  @override
  String get privacyLocationSubtitle => 'Sellega lubad rakendustel teada sinu geograafilist asukohta.\nSeda saad süsteemi seadistustest alati muuta.';

  @override
  String get privacyLocationEnable => 'Asukohateenused';

  @override
  String get privacyPolicyLink => 'Andmekaitse';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Liitu imeväel selle koodi abil aadressil <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Liida see arvuti või seade';

  @override
  String get ubuntuProOrAddTokenManually => 'või lisa ligipääsutunnus käsitsi';

  @override
  String get ubuntuProTokenTextfieldHint => 'Ligipääsutunnus';

  @override
  String get ubuntuProSubscriptionDescription => 'Võta kasutusele kõige mitmekülgsem avatud lähtekoodiga tarkvara turvalahendus';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'Alati tasuta erakasutuseks. 30-päevane prooviperiood ärikasutuseks. <a href=\"https://$url\">Vaata lisateavet</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Lisa';

  @override
  String get ubuntuProTokenAttachError => 'Vigane ligipääsutunnus';

  @override
  String get ubuntuProTokenAttachSucess => 'Kehtiv ligipääsutunnus';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Vigane ligipääsutunnus, proovi uuesti';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Jäta praegu vahele';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Hiljem saad sa alati Ubuntu Pro kasutusele võtta rakenduses „Tarkvara ja uuendused“.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Võta Ubuntu Pro kasutusele';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Lisa see arvuti või seade Ubuntu Pro tellimusele, mis tagab paljude pakettide turvauuendused kuni 2032. aastani.';

  @override
  String get ubuntuProSucessAttachHeader => 'Ubuntu Pro on nüüd selles arvutis või seadmes kasutusel';

  @override
  String get ubuntuProSucessAttachDescription => 'Sa võid hallata oma Ubuntu Pro teenuseid rakenduses „Tarkvara ja uuendused“.';
}
