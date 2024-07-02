#!/bin/bash
echo "######### Starting to execute SH script... #########"

USER_NAME='scylla'
PASSWORD='scylla'

echo "######### Sleeping for 5 seconds #########"
sleep 5

while ! cqlsh scylla -u "${USER_NAME}" -p "${PASSWORD}" -e 'describe cluster' ; do
     echo "######### Waiting for main instance to be ready... #########"
     sleep 5
done

for cql_file in ./scylla_scripts/*.cql;
do
  cqlsh scylla -u "${USER_NAME}" -p "${PASSWORD}" -f "${cql_file}" ;
  echo "######### Script ""${cql_file}"" executed!!! #########"
done
echo "######### Execution of SH script is finished! #########"
echo "######### Stopping temporary instance! #########"
