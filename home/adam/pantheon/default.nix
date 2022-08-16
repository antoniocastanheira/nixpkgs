{ pkgs, lib, ...}:

let
  mkTuple = lib.hm.gvariant.mkTuple;
in
{
    dconf.enable = true;
  dconf.settings = {
    "org/gnome/settings-daemon/plugins/power" = {
      "sleep-inactive-ac-type" = "never";
    };
  };
}