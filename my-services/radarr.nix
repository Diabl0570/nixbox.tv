{ ... }:

{
  services.radarr = {
    enable = true;
    openFirewall = true;
    group = "Media";
  };
}