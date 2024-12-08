{ ... }:

{
  services.readarr = {
    enable = true;
    openFirewall = true;
    group = "Media";
  };
}