{
  description = "My nixvim config — standalone flake with locked nixvim version";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    nixvim.url = "github:nix-community/nixvim/nixos-25.11";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixpkgs, nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { system, ... }:
        let
          pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit system;
            inherit pkgs;
            module = import ./config.nix;
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
        in
        {
          checks.default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          packages.default = nvim;
        };
    };
}
