# Elimina weston
sudo apt purge weston -y
sudo apt autoremove -y

# Actualizar
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# Optimización de Discos (SSD)
sudo systemctl enable --now fstrim.timer

# Microcódigo de la CPU (AMD)
sudo apt install amd64-microcode -y

# Eliminar software
sudo apt purge gnome-calendar -y
sudo apt purge gnome-characters -y
sudo apt purge gnome-contacts -y
sudo apt purge gnome-weather -y
sudo apt purge gnome-maps -y
sudo apt purge gnome-clocks -y
sudo apt purge gnome-connections -y
sudo apt purge gnome-font-viewer -y
sudo apt purge totem -y
sudo apt purge simple-scan -y
sudo apt purge loupe -y

sudo apt autoremove -y

# Instalar JetBrains font
sudo apt install fonts-jetbrains-mono -y
fc-cache -f -v

# Modo oscuro
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

# Fondo negro
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings set org.gnome.desktop.background primary-color '#000000'

# Reloj superior con fecha y 24h
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-date true

# Botones en ventanas
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# Iconos en escritorio
sudo apt install gnome-shell-extension-desktop-icons-ng -y
gnome-extensions enable ding@rastersoft.com
gsettings set org.gnome.shell.extensions.ding show-volumes true
gsettings set org.gnome.shell.extensions.ding show-trash true
gsettings set org.gnome.shell.extensions.ding show-home true
gsettings set org.gnome.shell.extensions.ding show-network-volumes true

sudo reboot
