# Install dependencies
sudo apt update
sudo apt install unzip libcanberra-gtk-module libgconf-2-4 libatomic1

# Create the folder
sudo mkdir /opt/popcorn-time
cd /opt/popcorn-time

# Download Popcorn Time archive
sudo wget https://get.popcorntime.app/repo/build/Popcorn-Time-0.4.4-linux64.zip
sudo unzip Popcorn-Time-0.4.4-linux64.zip -d /opt/popcorn-time

# Create symlink
sudo ln -sf /opt/popcorn-time/Popcorn-Time /usr/bin/popcorn-time

# Add the launcher
echo "[Desktop Entry]
Version = 1.0
Type = Application
Terminal = false
Name = Popcorn Time
Exec = /usr/bin/popcorn-time
Icon = /opt/popcorn-time/src/app/images/icon.png
Categories = Application;" > /usr/share/applications/popcorntime.desktop
