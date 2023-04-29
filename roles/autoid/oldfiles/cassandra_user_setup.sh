cqlsh #ip# -u cassandra -p cassandra -e "CREATE ROLE if not exists zoran_dba WITH PASSWORD = '#pass#' AND SUPERUSER = true AND LOGIN = true;"

cqlsh #ip# -u cassandra -p cassandra -e "CREATE ROLE if not exists zoranuser WITH PASSWORD = '#pass#' AND LOGIN = true;"

cqlsh #ip# -u zoran_dba -p #pass# -e "ALTER ROLE cassandra WITH PASSWORD= '#pass#' AND SUPERUSER=false AND LOGIN = false;"

cqlsh #ip# -u zoran_dba -p #pass# -e "ALTER KEYSPACE "system_auth" WITH REPLICATION = {'class' : 'NetworkTopologyStrategy', 'datacenter1' : 1};"
