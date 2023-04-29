password=#pass#
dname="CN=#ip#, OU=ElasticCluster, O=YourCompany, C=US"
keytool -genkeypair -keyalg RSA -alias esnodekey -keystore elastic-client-keystore.jks -storepass $password  -keypass $password -validity 1024 -keysize 2048 -dname "$dname"
keytool -certreq -keystore elastic-client-keystore.jks -alias esnodekey  -file esnodekey.csr  -keypass $password  -storepass $password -dname "$dname"
