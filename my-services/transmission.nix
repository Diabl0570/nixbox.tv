{
  services.transmission = { 
    enable = true; #Enable transmission daemon
    openRPCPort = true; #Open firewall for RPC
    group = "Media";
    settings = { #Override default settings
      rpc-bind-address = "0.0.0.0"; #Bind to own IP
      rpc-whitelist = "127.0.0.1,192.168.178.*"; #Whitelist your remote machine (10.0.0.1 in this example)
      download-dir = "/data/downloads";
      incomplete-dir = "/data/downloads";
      incomplete-dir-enabled = true;
      umask = 2;  # This sets the umask for new files (0002 in octal)
      # download-dir-permissions = "775";  # rwxrwxr-x # use umask instead
      peer-limit-per-torrent = 50;
      max-peers-global = 500;
      download-queue-enabled = true; #Boolean (default = true) When true, Transmission will only download download-queue-size non-stalled torrents at once.
      download-queue-size = 10; #Number (default = 5) See download-queue-enabled
      seed-queue-enabled = true;
      seed-queue-size = 20; #Number (default = 10) See seed-queue-enabled.
    };
  };
}