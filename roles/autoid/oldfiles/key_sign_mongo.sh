password=#pass#
openssl x509 -req -CA ca.pem -CAkey ca.key -in mongodbkey.csr -out mongonodekey.crt_signed -days 3650 -CAcreateserial -passin pass:$password
