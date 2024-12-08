{ ... }:

{
  services.lidarr = {
    enable = true;
    openFirewall = true;
    group = "Media";
  };
}