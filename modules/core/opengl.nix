{ config, pkgs, ... }:

{
# OpenGL Driver Setup
  # Enable OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
