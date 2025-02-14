{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "hello-world";
  version = "0.1.0";

  src = ./.;

  nativeBuildInputs = with pkgs; [
    cmake
    gcc
  ];

  buildPhase = "cmake . && make";
  
  installPhase = ''
    mkdir -p $out/bin
    cp pesto-carbonara $out/bin/
  '';

}
