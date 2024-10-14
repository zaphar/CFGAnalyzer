{
    description = "cfganalyzer with a modern build system";

    inputs = {
        nixpkgs.url = "github:nix-ocaml/nix-overlays";
        flake-utils.url = "github:numtide/flake-utils";
    };

  outputs = { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages."${system}";
        ocamlPackages = pkgs.ocaml-ng.ocamlPackages_5_2;
      in
      {
        devShell = pkgs.mkShell {
          nativeBuildInputs = with pkgs.ocamlPackages; [ cppo findlib ];
          buildInputs = with ocamlPackages; [
             ocaml
             merlin
             ocaml-lsp
             dune
             opam
          ];
        };
      }
    );
}
