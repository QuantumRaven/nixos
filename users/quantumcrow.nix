{ pkgs, ... }:

{
  users.users.quantumcrow = {
      isNormalUser = true;
      description = "quantumcrow";
      extraGroups = [ "networkmanager" "wheel" "libvirtd"];
      hashedPassword = "$6$FYJD72vquzMlXPS2$oml7DmGd4o9LGrCJ1.XkZi1pgjJMlQKueSAm0gHjzxSAczicDsytVWYXtJFQTuY.L7fIsMhEvbjhzfO3R3XF5.";
      shell = pkgs.fish;
      packages = with pkgs; [
     
      # alacritty # A cross-platform, GPU-accelerated terminal emulator
      ansible # Radically simple IT automation
      ansible-lint # Best practices checker for Ansible
      aria2 # A lightweight, multi-protocol, multi-source, command-line download utility
      asciinema # Terminal session recorder and the best companion of asciinema.org
      bat # A cat(1) clone with syntax highlighting and Git integration
      black
      btop # A monitor of resources
      brave
      buildah # A tool which facilitates building OCI images
      cockatrice
      conmon # An OCI container runtime monitor
      dialog
      discord # All-in-one cross-platform voice and text chat for gamers
      du-dust # du + rust = dust. Like du but more intuitive
      duf # Disk Usage/Free Utility
      fastfetch # Like neofetch, but much faster because written in C
      fd # A simple, fast and user-friendly alternative to find      
      ffmpeg # A complete, cross-platform solution to record, convert and stream audio and video
      fish # Smart and user-friendly command line shell
      fira-code-nerdfont # Iconic font aggregator, collection, & patcher. 3,600+ icons, 50+ patched fonts
      fzf # Command-line fuzzy finder written in Go
      gimp # The GNU Image Manipulation Program
      grim # Grab images from a Wayland compositor
      guake
      helvum # A GTK patchbay for pipewire
      jetbrains.idea-community-bin # Free Java, Kotlin, Groovy and Scala IDE from jetbrains (patched binaries from jetbrains)
      jetbrains.pycharm-community-bin # Free Python IDE from JetBrains (patched binaries from jetbrains)
      kdenlive
      krita
      keepassxc # Offline password manager with many features.
      libreoffice # Comprehensive, professional-quality productivity suite, a variant of openoffice.org
      librewolf # A fork of Firefox, focused on privacy, security and freedom
      lorien # An infinite canvas drawing/note-taking app
      lsd # The next gen ls command
      lshw # Provide detailed information on the hardware configuration of the machine
      mpv # General-purpose media player, fork of MPlayer and mplayer2
      neovim
      nomacs # nomacs is a free, open source image viewer, which supports multiple platforms. You can use it for viewing all common image formats including RAW and psd images.
      notesnook # Evernote alternative
      okular
      obs-studio
      obs-studio-plugins.wlrobs
      openssl # A cryptographic library that implements the SSL and TLS protocols
      pandoc # Conversion between documentation formats
      pciutils # A collection of programs for inspecting and manipulating configuration of PCI devices
      podman-compose # An implementation of docker-compose with podman backend
      pipewire # Server and user space API to deal with multimedia pipelines
      pwvucontrol # Pipewire Volume Control
      pw-volume # Basic interface to PipeWire volume controls
      rclone # Command line program to sync files and directories to and from major cloud storage
#      rnote # Simple drawing application to create handwritten notes
      sd # Intuitive find & replace CLI (sed alternative)
      signal-desktop # Private, simple, and secure messenger
      skopeo # A command line utility for various operations on container images and image repositories
      slurp # Select a region in a Wayland compositor
      spotify
      sshpass # Non-interactive ssh password auth
      texlive.combined.scheme-full
      thunderbird
      typst # A new markup-based typesetting system that is powerful and easy to learn
      unzip # An extraction utility for archives compressed in .zip format
      ventoy-full # A New Bootable USB Solution
      veracrypt # Free Open-Source filesystem on-the-fly encryption
      waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors
      wdisplays # A graphical application for configuring displays in Wayland compositors
      wf-recorder # Utility program for screen recording of wlroots-based compositors
      wget2 # Successor of GNU Wget, a file and recursive website downloader
      wl-clipboard-rs # Command-line copy/paste utilities for Wayland, written in Rust
      wofi # A launcher/menu program for wlroots based wayland compositors such as sway
      xdg-desktop-portal-wlr # xdg-desktop-portal backend for wlroots
      xh # Friendly and fast tool for sending HTTP requests
      xournalpp
      xwayland # X server for interfacing X11 apps with the Wayland protocol
      zeal # A simple offline API documentation browser
      zellij # A terminal workspace with batteries included
      zettlr # Joplin alternative

      ];
  };



}
