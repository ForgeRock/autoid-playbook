echo 'db.createUser({user: "root12", pwd: "test123", roles: [{role: "root", db: "admin"}] });' | mongo admin
echo 'db.createUser({user: "test12", pwd: "test!23", roles: [{role: "userAdminAnyDatabase", db: "admin"}, {role: "readWriteAnyDatabase", db: "admin"}] });' | mongo admin
