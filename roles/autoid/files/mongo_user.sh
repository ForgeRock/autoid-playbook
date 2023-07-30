echo 'db.createUser({user: "root", pwd: "password", roles: [{role: "root", db: "admin"}] });' | /usr/local/bin/mongo admin
echo 'db.createUser({user: "mongoadmin", pwd: "password", roles: [{role: "userAdminAnyDatabase", db: "admin"}, {role: "readWriteAnyDatabase", db: "admin"}] });' | /usr/local/bin/mongo admin
