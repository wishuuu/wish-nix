{pkgs, ...}: {
  imports = [
    ./rust.nix
    ./js.nix
  ];

  home.packages = with pkgs; [
    texlive.combined.scheme-full
  ];
}
