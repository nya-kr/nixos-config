{ host, lib, config, ... }: {
  networking = {
    hostName = host;
    networkmanager = {
      enable = true;
    };
    # Wake on lan
    interfaces.enp6s0.wakeOnLan.enable = config.my.isHighPower;
    firewall = {
      enable = true;
      # Calendar server
      allowedTCPPorts = [ 5232 ];
      # Wake on lan
      allowedUDPPorts = lib.mkIf config.my.isHighPower [ 9 ];
    };
  };
}