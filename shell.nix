{ sources ? import ./nix/sources.nix }:
let
  pkgs = import sources.nixpkgs {};
  crate2nix = import sources.crate2nix {};
in
  pkgs.mkShell {
    buildInputs = [ crate2nix ];
  }
