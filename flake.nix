{
  description = "SCTI 2025";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      devShell = pkgs.mkShell {
        buildInputs = with pkgs; [
          glfw3
          gnumake

          xorg.libX11
          xorg.libXrandr
          xorg.libXcursor
          xorg.libXi
          xorg.libXxf86vm
        ];
      };
    }
  );
}
