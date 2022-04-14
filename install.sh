#! /bin/bash
printf "Hi brooke" >&2
{
sudo useradd -m brooke
sudo adduser brooke sudo
echo 'brooke:Jacobs123' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
# Install Chrome Remote Desktop
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
# Install Desktop Environment
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes  task-gnome-desktop
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/gnome-session" > /etc/chrome-remote-desktop-session'    sudo apt remove --assume-yes gnome-terminal
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes ./google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
printf "$g$b    Installing Desktop Environment $endc$enda" >&2
{
    sudo DEBIAN_FRONTEND=noninteractive \
        apt install --assume-yes  task-gnome-desktop
    sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/gnome-session" > /etc/chrome-remote-desktop-session'    sudo apt remove --assume-yes gnome-terminal
    sudo apt install --assume-yes xscreensaver
    sudo systemctl disable lightdm.service
} &> /dev/null &&
printf "\r$c$b    Desktop Environment Installed $endc$enda\n" >&2 ||
{ printf "\r$r$b    Error Occured $endc$enda\n" >&2; exit; }
sleep 3

sudo adduser brooke chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Completed " >&2 ||
printf "\nError Occured " >&2
printf 'Check https://remotedesktop.google.com/access/ \n'