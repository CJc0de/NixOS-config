# Some commands to remember

- ```nh os switch .```
- ```nh os build .```
- ```nix flake update```

# New installations

- don't forget that encrypted swap partition config is stored in `/etc/nixos/configuration.nix` rather than `/etc/nixos/hardware-configuration.nix` 
  - and so when copying `/etc/nixos/hardware-configuration.nix` into `./hw-configs/<hostname>.nix` the swap partition config must be manually inserted from `/etc/nixos/configuration.nix` into `./hw-configs/<hostname>.nix`
