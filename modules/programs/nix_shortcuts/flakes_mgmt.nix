{ config, pkgs, ... }:

let
  flakeAndromedaBuild = pkgs.writeShellScriptBin "flake_build_andromeda" ''
    sudo nixos-rebuild build --flake .#andromeda
    '';

  flakeAndromedaTest = pkgs.writeShellScriptBin "flake_test_andromeda" ''
    sudo nixos-rebuild test --flake .#andromeda
    '';

  flakeAndromedaSwitch = pkgs.writeShellScriptBin "flake_switch_andromeda" ''
    sudo nixos-rebuild switch --flake .#andromeda
    '';

  flakeVoidBuild = pkgs.writeShellScriptBin "flake_build_void" ''
    sudo nixos-rebuild build --flake .#void
  '';

  flakeVoidTest = pkgs.writeShellScriptBin "flake_test_void" ''
    sudo nixos-rebuild test --flake .#void
  '';

  flakeVoidSwitch = pkgs.writeShellScriptBin "flake_switch_void" ''
    sudo nixos-rebuild switch --flake .#void
  '';

in
{
  environment.systemPackages = [
    flakeAndromedaBuild
    flakeAndromedaTest
    flakeAndromedaSwitch
    flakeVoidBuild
    flakeVoidTest
    flakeVoidSwitch
  ];
}
