{
  description = "salasana html version";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-21.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, flake-utils, ... }:
  flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
      salasana = (with pkgs; stdenv.mkDerivation {
          name = "salasana";
          src = ./.;
          dontBuild = true;
          installPhase = ''
            mkdir $out
            cp -R $src/* $out/
            rm $out/flake.*
          '';
        }
      );
    in rec {
      defaultApp = flake-utils.lib.mkApp {
        drv = defaultPackage;
      };
      defaultPackage = salasana;
      overlay = (final: prev: {
        salasana = salasana;
      });
    }
  );
}
