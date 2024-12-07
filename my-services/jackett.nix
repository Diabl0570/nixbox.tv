  { ... }:

{
  # jackett
  services.jackett = {
    enable = true;
    openFirewall = true;
    group = "Media";
  };
}