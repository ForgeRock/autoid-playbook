password=#pass#
dname="CN=#ip#, OU=ElasticCluster, O=YourCompany, C=US"
openssl x509 -req -CA root-ca.pem -CAkey root-ca-key.pem -in esnodekey.csr -out esnodekey.crt_signed -days 3650 -CAcreateserial -passin pass:$password
