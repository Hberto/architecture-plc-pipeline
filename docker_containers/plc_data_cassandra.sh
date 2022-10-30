#!/usr/bin/env bash

echo "Creating keyspace and table..."
cqlsh cassandra -u cassandra -p cassandra -e "CREATE KEYSPACE IF NOT EXISTS test WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};"
cqlsh cassandra -u cassandra -p cassandra -e "CREATE TABLE IF NOT EXISTS test.test (topic text, value int, timestamp timestamp, PRIMARY KEY ((topic), timestamp));"

echo "Done Creating keyspace and table..."