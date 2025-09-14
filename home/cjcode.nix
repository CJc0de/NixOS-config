{
  config,
  pkgs,
  ...
}: {
  imports = [./common.nix];

  home.packages = [
    # CLI utils
    pkgs.wget
    pkgs.git
    pkgs.inetutils
    pkgs.alejandra
    pkgs.libnotify
    pkgs.python313
    pkgs.vim
    pkgs.fastfetch
    # Non-included library
    pkgs.kdePackages.qtsvg
    # Regular desktop applications
    pkgs.protonvpn-gui
    pkgs.proton-pass
    pkgs.protonmail-desktop
    pkgs.rpi-imager
    pkgs.dolphin-emu
    pkgs.libreoffice
    pkgs.obs-studio
    pkgs.qalculate-qt
    pkgs.vscodium
    pkgs.gimp
    pkgs.brave
    pkgs.kdePackages.kzones
    pkgs.filezilla
    pkgs.thunderbird
    pkgs.ytdownloader
    pkgs.discordchatexporter-desktop
    pkgs.firefox
    pkgs.mullvad-browser
    pkgs.upscayl
  ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "cjcode";
  home.homeDirectory = "/home/cjcode";

  programs.vesktop = {
    enable = true;
    # settings = builtins.readFile ./external/vesktop-settings.json;
    vencord = {
      # settings = builtins.readFile ./external/vencord-settings.json;
    };
  };

  programs.librewolf = {
    enable = true;
  };

  programs.plasma = {
    enable = true;
    overrideConfig = true;
    input.keyboard = {
      model = "pc105";
      options = ["terminate:ctrl_alt_bksp" "caps:escape_shifted_capslock"];
      numlockOnStartup = "on";
    };
    input.mice = [
      {
        name = "PIXART USB OPTICAL MOUSE";
        vendorId = "093a";
        productId = "2510";
        acceleration = 0.2;
        accelerationProfile = "none";
      }
      {
        name = "Corsair Corsair Gaming HARPOON RGB Mouse";
        vendorId = "1b1c";
        productId = "1b3c";
        acceleration = 0.2;
        accelerationProfile = "none";
      }
    ];
    input.touchpads = [
      {
        disableWhileTyping = true;
        enable = true;
        name = "DELL0810:00 044E:120A Touchpad";
        naturalScroll = true;
        pointerSpeed = 0;
        accelerationProfile = "default";
        productId = "120a";
        tapToClick = true;
        vendorId = "044e";
      }
    ];
    panels = [
      {
        height = 32;
        hiding = "none";
        widgets = [
          "org.kde.plasma.kickoff"
          "org.kde.plasma.pager"
          "org.kde.plasma.taskmanager"
          "org.kde.plasma.marginsseparator"
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
          "org.kde.plasma.showdesktop"
        ];
      }
    ];
    fonts = {
      fixedWidth.styleStrategy.noSubpixelAntialias = true;
      fixedWidth.pointSize = 10;
      fixedWidth.family = "Hack";
      general.styleStrategy.noSubpixelAntialias = true;
      general.pointSize = 10;
      general.family = "Noto Sans";
      menu.styleStrategy.noSubpixelAntialias = true;
      menu.pointSize = 10;
      menu.family = "Noto Sans";
      small.styleStrategy.noSubpixelAntialias = true;
      small.pointSize = 8;
      small.family = "Noto Sans";
      toolbar.styleStrategy.noSubpixelAntialias = true;
      toolbar.pointSize = 10;
      toolbar.family = "Noto Sans";
      windowTitle.styleStrategy.noSubpixelAntialias = true;
      windowTitle.pointSize = 10;
      windowTitle.family = "Noto Sans";
    };
    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
    };
  };
}
