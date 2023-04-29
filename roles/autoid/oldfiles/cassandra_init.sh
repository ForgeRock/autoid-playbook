sed -i 's/cluster_name: '\''Test Cluster'\''/cluster_name: '\''Zoran Cluster'\''/g' /etc/cassandra/conf/cassandra.yaml
sed -i 's/rpc_address: localhost/rpc_address: '#myip#'/g' /etc/cassandra/conf/cassandra.yaml
sed -i 's/# broadcast_rpc_address: 1.2.3.4/broadcast_rpc_address: '#myip#'/g' /etc/cassandra/conf/cassandra.yaml
sed -i 's/# broadcast_address: 1.2.3.4/broadcast_address: '#myip#'/g' /etc/cassandra/conf/cassandra.yaml
sed -i 's/- seeds: \"127.0.0.1/- seeds: \"'#myip#'/g' /etc/cassandra/conf/cassandra.yaml
sed -i 's/authenticator: AllowAllAuthenticator/authenticator: PasswordAuthenticator/g' /etc/cassandra/conf/cassandra.yaml
