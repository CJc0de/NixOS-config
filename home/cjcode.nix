{
  config,
  pkgs,
  ...
}: {
  imports = [./common.nix];

  home.packages = with pkgs; [
    wget
    git
    inetutils
    librewolf
    vesktop
    python313
    protonvpn-gui
    proton-pass
    protonmail-desktop
    rpi-imager
    dolphin-emu
    libreoffice
    cmake
    obs-studio
    qalculate-qt
    vscodium
    gimp
    brave
    neofetch
    kdePackages.kzones
    filezilla
    thunderbird
    alejandra
    libnotify
    libgcc
    ytdownloader
    discordchatexporter-desktop
    vim
    firefox
  ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "cjcode";
  home.homeDirectory = "/home/cjcode";
}
