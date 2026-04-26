# Setup

## Install Ubuntu Server
Flash Ubuntu iso to usb. Install on server.

## Ubuntu CLI cheat sheet
<img width="1920" height="1357" alt="image" src="https://github.com/user-attachments/assets/352bccb6-280d-4003-a752-d2a6ed7d1f04" />

## Start admin session
~~~
sudo -i
~~~

## Update packages
~~~
sudo apt update
~~~
~~~
sudo apt upgrade
~~~
~~~
sudo apt autoremove
~~~

## Install Tailscale
Used for easy management of ssh certs + VPN.

Found at https://tailscale.com/download/linux
~~~
sudo curl -fsSL https://tailscale.com/install.sh | sh
~~~
~~~
sudo tailscale up --ssh
~~~
Navigate to the link

## Install UFW (Firewall)

~~~
sudo apt install ufw
~~~
~~~
sudo ufw default deny incoming
~~~
~~~
sudo ufw default allow outgoing
~~~
~~~
sudo ufw allow in on tailscale0
~~~
~~~
sudo ufw allow out on tailscale0
~~~
~~~
sudo ufw allow in on tailscale0 to any port 22
~~~
~~~
sudo ufw allow proto udp from 192.168.1.0/24 to any port 8472
~~~
~~~
sudo ufw allow proto tcp from 192.168.1.0/24 to any port 6443
~~~
~~~
sudo ufw enable
~~~

## Install Docker
~~~
curl -fsSL https://get.docker.com | sh
~~~

## Connect to Storage
~~~
sudo apt install cifs-utils
~~~
~~~
nano /etc/fstab
~~~

Add the following to the bottom:
~~~
//home-server/Storage /mnt/Storage cifs guest,vers=3.0,_netdev,nofail 0 0
~~~
Save and exit.

~~~
mkdir /mnt/Storage
~~~
~~~
systemctl daemon-reload
~~~
~~~
mount -a
~~~


