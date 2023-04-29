password=#pass#
dname1="CN=cassandranode, OU=ZoranCluster, O=YourCompany, C=US"
dname2="CN=sparknode, OU=ZoranCluster, O=YourCompany, C=US"
openssl x509 -req -CA root-ca.pem -CAkey root-ca-key.pem -in cassandranode.csr -out cassandranode.crt_signed -days 3650 -CAcreateserial -passin pass:$password
openssl x509 -req -CA root-ca.pem -CAkey root-ca-key.pem -in sparknode.csr -out sparknode.crt_signed -days 3650 -CAcreateserial -passin pass:$password
