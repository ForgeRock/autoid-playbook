# autoid-playbook
Automated deployment of autoid 2022.11.x. This is an example provided by the community of ForgeRock users. This is in no way supported or tested by ForgeRock.
NOTE:
If you are OS is Redhat8, please run ansible-playbook/redhat.sh first

1. ssh to the new vm

clone the repo:

2. cd autoid_ansible/roles/autoid/vars

edit main.yml

3. run ansible-playbook

cd to autoid_ansible
you should see playbook.yml and other files.

ansible-playbook playbook.yml

4. run deployer.sh run as autoid user

sudo su - autoid
cd autoid-config
./run_deployer.sh 

NOTE:
Before you run ansible-playbook, make sure the following steps are done which allow you to choose version of autoid, database type, user name etc
If you choose use cassandra as your database type, you will need generate keystore manually first
edit autoid_ansible/roles/autoid/vars/main.yml
You can change user name who owns the application: autoid_user
You can change the third party software location: home_dir

update your docker registry key value as following:
key_id is only the value inside double quote after private_key_id ---> "private_key_id": "xxxxxxxxxxxxxxxxxxxxx",

"private_key": "-----BEGIN PRIVATE KEY-----\nxxxxxxxxxxxxxxxxxxxxx\n-----END PRIVATE KEY-----\n",
please only copy/paster value in between -----BEGIN PRIVATE KEY-----\n  and \n-----END PRIVATE KEY


Note:
There is a showcase_data.zip for dummy data
or
Connect to mysql via jdbc
jdbc:mysql://10.x.x.x:3306/autoid
