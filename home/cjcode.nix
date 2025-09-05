{
  config,
  pkgs,
  ...
}: {
  imports = [./common.nix];

  home.packages = [
    pkgs.wget
    pkgs.git
    pkgs.inetutils
    pkgs.librewolf
    pkgs.vesktop
    pkgs.python313
    pkgs.protonvpn-gui
    pkgs.proton-pass
    pkgs.protonmail-desktop
    pkgs.rpi-imager
    pkgs.dolphin-emu
    pkgs.libreoffice
    pkgs.cmake
    pkgs.obs-studio
    pkgs.qalculate-qt
    pkgs.vscodium
    pkgs.gimp
    pkgs.brave
    pkgs.neofetch
    kdepackages.kzones
    pkgs.filezilla
    pkgs.thunderbird
    pkgs.alejandra
    pkgs.libnotify
    pkgs.libgcc
    pkgs.ytdownloader
    pkgs.discordchatexporter-desktop
    pkgs.vim
    pkgs.firefox
  ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "cjcode";
  home.homeDirectory = "/home/cjcode";
}
