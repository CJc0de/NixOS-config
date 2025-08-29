{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  networking.hostName = "CJcode0x02";

  boot.initrd.availableKernelModules = ["xhci_pci" "ahci" "nvme" "usb_storage" "sd_mod" "sr_mod" "rtsx_usb_sdmmc"];
  boot.initrd.kernelModules = [];
  boot.kernelModules = ["kvm-intel"];
  boot.extraModulePackages = [];

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/7041c69d-674e-466a-8ca0-edf5bd2c0e38";
    fsType = "ext4";
  };

  boot.initrd.luks.devices."luks-cb303ad2-86fb-474c-b829-1333c813db4e".device = "/dev/disk/by-uuid/cb303ad2-86fb-474c-b829-1333c813db4e";
  boot.initrd.luks.devices."luks-021faf1a-f05e-4dc4-b51e-fb65292a5784".device = "/dev/disk/by-uuid/021faf1a-f05e-4dc4-b51e-fb65292a5784";

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/70D3-5716";
    fsType = "vfat";
    options = ["fmask=0077" "dmask=0077"];
  };

  swapDevices = [
    {device = "/dev/disk/by-uuid/774277c1-8321-4d57-a3d3-6ca9674bdad8";}
  ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp1s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp2s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
