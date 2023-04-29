password=#pass#
dname="CN=#ip#, OU=ElasticCluster, O=YourCompany, C=US"
keytool -importcert -keystore elastic-client-keystore.jks -alias rootCa  -file root-ca.pem -noprompt  -keypass $password -storepass $password
keytool -importcert -keystore elastic-client-keystore.jks -alias esnodekey -file esnodekey.crt_signed -noprompt  -keypass $password -storepass $password
keytool -importcert -keystore elastic-server-truststore.jks -alias rootCa  -file root-ca.pem -noprompt -keypass $password -storepass $password
