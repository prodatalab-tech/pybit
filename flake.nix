{
  description = "A Bybit python api client";

  nixConfig.bash-prompt = "pybit~$ ";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem 
      (system: 
        let 
          pkgs = import ./pynixify/nixpkgs.nix {inherit nixpkgs system; };
          pybit = pkgs.python3Packages.pybit;
          devShell = import ./pynixify/shell.nix {nixpkgs = pkgs; };
        in
          {
            packages = flake-utils.lib.flattenTree {
              inherit pybit;
            };
            defaultPackage = self.packages.pybit;
            inherit devShell;
          }
      );
}
