{ sources ? import ./sources.nix }:
let
  pkgs = import sources.nixpkgs {};
in
  pkgs
