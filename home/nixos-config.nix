{
  config,
  pkgs,
  ...
}: {
  imports = [./common.nix];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "nixos-config";
  home.homeDirectory = "/nixos-config";
}
