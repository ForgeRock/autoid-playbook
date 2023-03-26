password=#pass#
dname="CN=#ip#, OU=MongoCluster, O=YourCompany, C=US"
keytool -genkeypair -keyalg RSA -alias mongonodekey -keystore mongo-client-keystore.jks -storepass $password  -keypass $password -validity 3650 -keysize 2048 -dname "$dname"
keytool -certreq -keystore mongo-client-keystore.jks -alias mongonodekey  -file mongodbkey.csr  -keypass $password  -storepass $password -dname "$dname"
