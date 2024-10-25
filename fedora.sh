sudo dnf offline-upgrade download -y
sudo dnf offline-upgrade reboot -y

sudo dnf groupinstall "Development Tools" -y
sudo dnf install \
https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf group install Multimedia -y

sudo dnf install python3 python3-pip neofetch ranger htop btop nmap emacs vim neovim zip mpv vlc geany meld libreoffice transmission-gtk evince keepassxc chromium tree gimp inkscape darktable krita filezilla  blueman flatpak galculator fontawesome-fonts-all powerline-fonts terminus-fonts liberation-fonts google-roboto-fonts google-roboto-mono-fonts -y

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.visualstudio.code -y

mkdir -p ~/.config/kanshi && touch ~/.config/kanshi/config

profile {
	output eDP-1 disable
	output DP-1 mode 1920x1080@60.000Hz position 0,0
}

profile {
	output eDP-1 position 0,0
}

kanshi
