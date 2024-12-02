{
  services.transmission = { 
    enable = true; #Enable transmission daemon
    openFirewall = true;
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
      peer-limit-per-torrent = 100;
      max-peers-global = 5000; #old version
      peer-limit-global = 5000;
      download-queue-enabled = true; #Boolean (default = true) When true, Transmission will only download download-queue-size non-stalled torrents at once.
      download-queue-size = 50; #Number (default = 5) See download-queue-enabled
      seed-queue-enabled = true;
      seed-queue-size = 100; #Number (default = 10) See seed-queue-enabled.
      cache-size-mb = 1024; #cache-size-mb: Number (default = 4), in megabytes, to allocate for Transmission's memory cache. The cache is used to help batch disk IO together, so increasing the cache size can be used to reduce the number of disk reads and writes. The value is the total available to the Transmission instance. Setting this to 0 bypasses the cache, which may be useful if your filesystem already has a cache layer that aggregates transactions.

    };
  };
}