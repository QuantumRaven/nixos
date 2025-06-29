{ config, pkgs, ... }:

{

# OpenGL Driver Setup


  # Enable OpenGL
  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
};

}
