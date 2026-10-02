{ config, pkgs, ... }:

let
  flakeAndromedaBuild = pkgs.writeShellScriptBin "flake_andromeda_build" ''
    sudo nixos-rebuild build --flake .#andromeda
    '';

  flakeAndromedaTest = pkgs.writeShellScriptBin "flake_andromeda_test" ''
    sudo nixos-rebuild test --flake .#andromeda
    '';

  flakeAndromedaSwitch = pkgs.writeShellScriptBin "flake_andromeda_switch" ''
    sudo nixos-rebuild switch --flake .#andromeda
    '';

  flakeVoidBuild = pkgs.writeShellScriptBin "flake_void_build" ''
    sudo nixos-rebuild build --flake .#void
  '';

  flakeVoidTest = pkgs.writeShellScriptBin "flake_void_test" ''
    sudo nixos-rebuild test --flake .#void
  '';

  flakeVoidSwitch = pkgs.writeShellScriptBin "flake_void_switch" ''
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
