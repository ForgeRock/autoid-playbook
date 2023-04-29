sed -i \
      -e 's/internode_encryption: none/internode_encryption: all/g' \
      -e 's#keystore: conf/.keystore#keystore: /etc/cassandra/conf/certs/zoran-cassandra-server-keystore.jks#g' \
      -e 's/keystore_password: cassandra/keystore_password: #keypass#/g' \
      -e '0,/^truststore/s#^\(\s*\)truststore: conf/.truststore#\1truststore: /etc/cassandra/conf/certs/zoran-cassandra-server-truststore.jks#' \
      -e '0,/truststore_password/s/truststore_password: cassandra/truststore_password: #keypass#/g' \
      -e 's/# protocol: TLS/protocol: TLS/g' \
      -e 's/# algorithm: SunX509/algorithm: SunX509/g' \
      -e 's/# store_type: JKS/store_type: JKS/g' \
      -e 's/# cipher_suites: .*/cipher_suites: [TLS_RSA_WITH_AES_256_CBC_SHA]/g' \
      -e 's/# require_client_auth: false/require_client_auth: true/g' \
      -e '/client_encryption_options:/{n;s/.*/  enabled: true/}' \
      -e '0,/# truststore:/s%# truststore: conf/.truststore%truststore: /etc/cassandra/conf/certs/zoran-cassandra-client-truststore.jks%g' \
      -e '0,/# truststore_password/s/# truststore_password: cassandra/truststore_password: #keypass#/g' \
      /etc/cassandra/conf/cassandra.yaml
