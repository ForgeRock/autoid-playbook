password=#pass#
dname1="CN=cassandranode, OU=ZoranCluster, O=YourCompany, C=US"
dname2="CN=sparknode, OU=ZoranCluster, O=YourCompany, C=US"
keytool -importcert -keystore zoran-cassandra-client-keystore.jks -alias rootCa  -file root-ca.pem -noprompt  -keypass $password -storepass $password
keytool -importcert -keystore zoran-cassandra-client-keystore.jks -alias sparknode -file sparknode.crt_signed -noprompt  -keypass $password -storepass $password
keytool -importcert -keystore zoran-cassandra-client-truststore.jks -alias rootCa  -file root-ca.pem -noprompt -keypass $password -storepass $password
keytool -importcert -keystore zoran-cassandra-server-keystore.jks -alias rootCa  -file root-ca.pem -noprompt  -keypass $password -storepass $password
keytool -importcert -keystore zoran-cassandra-server-keystore.jks -alias cassandranode -file cassandranode.crt_signed -noprompt  -keypass $password -storepass $password
keytool -importcert -keystore zoran-cassandra-server-truststore.jks -alias rootCa  -file root-ca.pem -noprompt -keypass $password -storepass $password
