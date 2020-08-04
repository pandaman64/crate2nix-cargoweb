{ sources ? import ./nix/sources.nix }:
let
  pkgs = import sources.nixpkgs {};
  package = pkgs.callPackage ./Cargo.nix {};
in
  package.rootCrate.build
