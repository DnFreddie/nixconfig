{config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    dunst
    rofi
    lxappearance
    picom
    arandr  
    flameshot
    autotiling
    vlc
    brave
    signal-desktop
    taskwarrior
  ];




environment.pathsToLink = [ "/libexec"];
services.xserver = { 
enable = true;
desktopManager = {
xterm.enable = false;
};
displayManager = {
defaultSession = "none+i3";
  gdm = { 
    enable = true;};

};

windowManager.i3 = {
enable = true;
};


};



}

