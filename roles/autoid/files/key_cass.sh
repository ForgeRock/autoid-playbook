password=#pass#
dname1="CN=cassandranode, OU=ZoranCluster, O=YourCompany, C=US"
dname2="CN=sparknode, OU=ZoranCluster, O=YourCompany, C=US"
keytool -genkeypair -keyalg RSA -alias cassandranode -keystore zoran-cassandra-server-keystore.jks -storepass $password  -keypass $password -validity 1024 -keysize 2048 -dname "$dname1"
keytool -genkeypair -keyalg RSA -alias sparknode -keystore zoran-cassandra-client-keystore.jks -storepass $password  -keypass $password -validity 1024 -keysize 2048 -dname "$dname2"
keytool -certreq -keystore zoran-cassandra-server-keystore.jks -alias cassandranode  -file cassandranode.csr  -keypass $password  -storepass $password -dname "$dname1"
keytool -certreq -keystore zoran-cassandra-client-keystore.jks -alias sparknode  -file sparknode.csr  -keypass $password  -storepass $password -dname "$dname2"
