# WARNING: This file was automatically generated. You should avoid editing it.
# If you run pynixify again, the file will be either overwritten or
# deleted, and you will lose the changes you made to it.

{ overlays ? [ ], ... }@args:
let
  pynixifyOverlay = self: super: {
    python2 = super.python2.override { inherit packageOverrides; };
    python27 = super.python27.override { inherit packageOverrides; };
    python3 = super.python3.override { inherit packageOverrides; };
    python35 = super.python35.override { inherit packageOverrides; };
    python36 = super.python36.override { inherit packageOverrides; };
    python37 = super.python37.override { inherit packageOverrides; };
    python38 = super.python38.override { inherit packageOverrides; };
  };

  nixpkgs =

    builtins.fetchTarball {
      url =
        "https://github.com/NixOS/nixpkgs/archive/748c9e0e3ebc97ea0b46a06295465eff2fb5ef92.tar.gz";
      sha256 = "158xblbbjv54n9a7b1y88jjjag2w5lb77dqfx0d4z2b32ss0p7mc";
    };

  packageOverrides = self: super: {
    pybit = self.callPackage ./packages/pybit { };

  };

in import nixpkgs (args // { overlays = [ pynixifyOverlay ] ++ overlays; })
