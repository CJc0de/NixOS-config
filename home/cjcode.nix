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
    # Regular desktop applications
    pkgs.librewolf
    pkgs.vesktop
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
  ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "cjcode";
  home.homeDirectory = "/home/cjcode";

  programs.plasma = {
    enable = true;
    overrideConfig = true;
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
