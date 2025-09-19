{
  AppAutoUpdate = true;
  Cookies = {
    Behavior = "reject-tracker-and-partition-foreign";
    BehaviorPrivateBrowsing = "reject-tracker-and-partition-foreign";
  };
  DisableFirefoxStudies = true;
  DisableFormHistory = true;
  DisableTelemetry = true;
  DisplayBookmarksToolbar = "newtab";
  DisplayMenuBar = "default-off";
  DNSOverHTTPS = {
    Enabled = true;
    ProviderURL = "https://dns.quad9.net/dns-query";
    Locked = true;
    ExcludedDomains = [];
  };
  DontCheckDefaultBrowser = true;
  EnableTrackingProtection = {
    Value = true;
    Locked = true;
    Cryptomining = true;
    Fingerprinting = true;
    EmailTracking = true;
    SuspectedFingerprinting = true;
    Category = "strict";
    Exceptions = [];
  };
  EncryptedMediaExtensions = {
    Enabled = false;
  };
  Extensions.Install = [
    "https://addons.mozilla.org/firefox/downloads/file/4413485/canvasblocker.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4432106/clearurls.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4040738/cookie_autodelete.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4535824/darkreader.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4451874/facebook_container.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4494279/multi_account_containers.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4517716/indie_wiki_buddy.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4298512/plasma_integration.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4570378/privacy_badger.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4567405/proton_pass.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4371820/return_youtube_dislikes.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4541835/sponsorblock.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4531347/tree_style_tab.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4531307/ublock_origin.xpi"
    "https://addons.mozilla.org/firefox/downloads/file/4524018/vimium_ff.xpi"
  ];
  ExtensionUpdate = true;
  FirefoxSuggest = {
    WebSuggestions = false;
    SponsoredSuggestions = false;
    ImproveSuggest = false;
  };
  schemes = {
    mailto = {
      action = "useHelperApp";
      ask = "true";
      handlers = [
        {
          name = "Outlook (web)";
          uriTemplate = "https://outlook.office.com/mail/?extsrc=mailto&url=%s";
        }
      ];
    };
  };
  extensions = {};
  HardwareAcceleration = true;
  Homepage.StartPage = "none";
  HttpAllowlist = [];
  HttpsOnlyMode = "enabled";
  LegacySameSiteCookieBehaviorEnabledForDommainList = [];
  NewTabPage = false;
  OfferToSaveLogins = false;
  OfferToSaveLoginsDefault = false;
  OverrideFirstRunPage = "https://outlook.office.com/mail";
  OverridePostUpdatePage = "https://outlook.office.com/mail";
  PasswordManagerEnabled = false;
  PDFjs.Enabled = false;
  Permissions = {
    Autoplay.Default = "block-audio-video";
  };
  PostQuantumKeyAgreementEnabled = true;
  Preferences = {};
  PrintingEnabled = true;
  ShowHomeButton = false;
  SkipTermsOfUse = true;
  UserMessaging = {
    ExtensionRecommendations = false;
    FeatureRecommendations = false;
    UrlbarInterventions = false;
    SkipOnboarding = true;
    MoreFromMozilla = false;
    FirefoxLabs = false;
  };
  UseSystemPrintDialog = false;
}
