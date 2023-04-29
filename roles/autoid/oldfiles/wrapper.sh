#/bin/bash
 
usermod -aG wheel autoid
echo 'autoid ALL=(ALL) NOPASSWD:ALL' | sudo tee /etc/sudoers.d/autoid
su - autoid &
cd /home/autoid/autoid-config
sudo /home/autoid/autoid-config/deployer.sh run
gpasswd -d autoid wheel
rm /etc/sudoers.d/autoid
