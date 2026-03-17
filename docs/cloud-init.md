# cloud-init

**Prerequisite**: make sure that VM created has qemu agent enabled

https://docs.cloud-init.io/en/latest/index.html
https://pve.proxmox.com/wiki/Cloud-Init_Support

### Update system
sudo apt update && sudo apt upgrade -y

### Install cloud-init
sudo apt install cloud-init -y

### Install qemu-guest-agent
sudo apt install qemu-guest-agent -y

### Verify agent is running
sudo systemctl status qemu-guest-agent

### Clean cloud-init
sudo cloud-init clean

### Remove instances
sudo rm -rf /var/lib/cloud/instances

### Clear machine IDs
sudo truncate -s 0 /etc/machine-id
sudo rm /var/lib/dbus/machine-id
sudo ln -s /etc/machine-id /var/lib/dbus/machine-id

### Clear history
history -c

### Shutdown
sudo shutdown -h now