sudo dnf offline-upgrade download -y
sudo dnf5 offline reboot -y

sudo dnf install \
https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf4 groupinstall "Development Tools" -y
sudo dnf4 group install "Multimedia" -y

sudo dnf install python3 python3-pip fastfetch kitty bat lsd fish playerctl brightnessctl wpctl ranger htop btop nmap emacs vim neovim zip mpv vlc geany meld libreoffice transmission-gtk evince keepassxc chromium tree gimp inkscape darktable krita flameshot filezilla blueman flatpak galculator fontawesome-fonts-all powerline-fonts terminus-fonts liberation-fonts google-roboto-fonts google-roboto-mono-fonts -y
sudo dnf install ncmpcpp mpd -y
sudo dnf install hyprland hyprland-devel hyprlock hypridle hyprpaper -y

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.visualstudio.code -y

cd ~/Downloads
mkdir ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip
unzip FiraCode.zip -d ~/.fonts
unzip Meslo.zip -d ~/.fonts

cd ~
cd ~/Downloads/fedora-sway/
cp -R sway waybar foot kanshi hypr kitty mpd ~/.config
cp -R backgrounds ~/Pictures
cd ~

mkdir -p ~/.config/kanshi && touch ~/.config/kanshi/config
profile {
	output eDP-1 disable
	output DP-1 mode 1920x1080@60.000Hz position 0,0
}

profile {
	output eDP-1 position 0,0
}

kanshi
