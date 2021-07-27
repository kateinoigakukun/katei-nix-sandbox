let
  moz_overlay = import (builtins.fetchTarball https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz);
  pkgs = import <nixpkgs> {
    overlays = [ moz_overlay ];
  };
in
  with pkgs;

  pkgs.mkShell rec {
    buildInputs = [ bashInteractive ];
    nativeBuildInputs = [
      clang
      pkgs.latest.rustChannels.nightly.rust
      sccache
      git
      docker
    ];
  }
