import 'ubuntu_init_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Irish (`ga`).
class UbuntuInitLocalizationsGa extends UbuntuInitLocalizations {
  UbuntuInitLocalizationsGa([String locale = 'ga']) : super(locale);

  @override
  String get welcomePageTitle => 'Fáilte';

  @override
  String welcomePageHeader(Object distro) {
    return 'Fáilte go dtí FemboyOS';
  }

  @override
  String get welcomeWhatsNew => 'CAD ATÁ NUA?';

  @override
  String get welcomeStartTitle => 'Tús sruthlínithe';

  @override
  String get welcomeStartSubtitle => 'Ag tacú le heispéireas socraithe níos glaine.';

  @override
  String get welcomeStoreTitle => 'App Store cuma nua';

  @override
  String get welcomeStoreSubtitle => 'Ní raibh sé riamh níos éasca teacht ar na bogearraí is fearr leat.';

  @override
  String get welcomeSecurityTitle => 'Slándála feabhsaithe';

  @override
  String get welcomeSecuritySubtitle => 'Roghanna nua le haghaidh criptithe crua-earraí nó ZFS.';

  @override
  String welcomeChangelogLabel(Object url) {
    return '<a href=\"$url\">Féach ar loga athruithe</a>';
  }

  @override
  String get telemetryPageTitle => 'teiliméadracht';

  @override
  String telemetryHeader(Object distro) {
    return 'Cabhraigh le FemboyOS a fheabhsú';
  }

  @override
  String telemetryDescription(Object distro) {
    return 'Cabhraigh linn FemboyOS a fheabhsú trí shonraí do chórais a roinnt linn. Áiríonn sé seo rudaí cosúil le do mhúnla meaisín, bogearraí suiteáilte agus an suíomh a roghnaigh tú do do chrios ama.';
  }

  @override
  String telemetryLabelOn(Object distro) {
    return 'Sea, roinn sonraí córais leis an bhfoireann FemboyOS';
  }

  @override
  String get telemetryLabelOff => 'Ní hea, ná roinn sonraí córais';

  @override
  String get telemetryReportLabel => 'Taispeáin an chéad tuairisc';

  @override
  String get telemetryReportTitle => 'Sonraí tuairiscithe';

  @override
  String get telemetryLegalLabel => 'Fógra dlíthiúil';

  @override
  String get telemetryCollectError => 'Theip ar bhailiú sonraí teiliméadrachta';

  @override
  String get privacyPageTitle => 'Seirbhísí suímh';

  @override
  String get privacyLocationTitle => 'Cumasaigh seirbhísí suímh?';

  @override
  String get privacyLocationSubtitle => 'Cuir do shuíomh geografach in iúl d’fheidhmchláir.\nIs féidir leat é seo a athrú am ar bith i Socruithe an Chórais.';

  @override
  String get privacyLocationEnable => 'Seirbhísí suímh';

  @override
  String get privacyPolicyLink => 'Príobháideacht Sonraí';

  @override
  String ubuntuProMagicAttachInstructions(Object url) {
    return 'Ceangail draíocht leis an gcód seo ag <a href=\"https://$url\">$url</a>';
  }

  @override
  String get ubuntuProPageTitle => 'Ubuntu Pro';

  @override
  String get ubuntuProHeader => 'Ceangail an meaisín seo';

  @override
  String get ubuntuProOrAddTokenManually => 'nó cuir comhartha isteach de láimh';

  @override
  String get ubuntuProTokenTextfieldHint => 'Comhartha';

  @override
  String get ubuntuProSubscriptionDescription => 'Faigh an síntiús is cuimsithí le haghaidh slándáil bogearraí foinse oscailte';

  @override
  String ubuntuProSubscriptionFreeForPersonalUse(Object url) {
    return 'I gcónaí saor in aisce le haghaidh úsáide pearsanta. Triail 30-lá d’fhiontair. <a href=\"https://$url\">Foghlaim tuilleadh</a>';
  }

  @override
  String get ubuntuProTokenAttachButton => 'Ceangail';

  @override
  String get ubuntuProTokenAttachError => 'Comhartha neamhbhailí';

  @override
  String get ubuntuProTokenAttachSucess => 'Comhartha bailí';

  @override
  String get ubuntuProTokenAttachErrorVariant => 'Comhartha neamhbhailí, bain triail eile as';

  @override
  String get ubuntuProOnBoardingSkipForNow => 'Scipeáil go fóill';

  @override
  String get ubuntuProOnBoardingSkipForNowDescription => 'Is féidir leat Ubuntu Pro a chumasú i gcónaí níos déanaí tríd an bhfeidhmchlár Bogearraí & Nuashonruithe.';

  @override
  String get ubuntuProOnBoardingEnableUbuntuPro => 'Cumasaigh Ubuntu Pro';

  @override
  String get ubuntuProOnBoardingEnableUbuntuProDescription => 'Ceangail an meaisín seo le síntiús Ubuntu Pro le haghaidh nuashonruithe slándála ar raon níos leithne pacáistí, go dtí 2032.';

  @override
  String get ubuntuProSucessAttachHeader => 'Tá Ubuntu Pro cumasaithe sa mheaisín seo anois';

  @override
  String get ubuntuProSucessAttachDescription => 'Is féidir leat do sheirbhísí Pro a bhainistiú san fheidhmchlár Bogearraí & Nuashonruithe.';
}
