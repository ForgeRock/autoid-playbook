# fix python3 issues
sudo rm /usr/bin/python3
sudo ln -s /usr/local/bin/python3.10 /usr/bin/python3
#cass/cassandra/cassandra_user_setup.sh
./deployer.sh run
sudo chmod 777 /opt/autoid/license/open-source-attributions.pdf
./deployer.sh run
# make sure to comment out 127.x in /etc/hosts
cd /opt/autoid/eggs
wheel convert  autoid_analytics-2021.3-py3.6.egg
pip3 install autoid_analytics-2021.3-py36-none-any.whl
#stop spark, livy
cd #home
./spark/sbin/stop-all.sh
./livy/bin/livy-server stop
#start spark, livy
./spark/sbin/start-all.sh
./livy/bin/livy-server start
