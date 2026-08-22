{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];
  my.isLaptop    = false;
  my.hasNvidia   = false;
  my.isHighPower = true;
  my.isDualBoot  = false;
}
