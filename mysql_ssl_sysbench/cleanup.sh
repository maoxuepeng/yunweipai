#!/bin/bash
USER="user1"
PASSWORD="Changeme_123"
DB="test"
./bin/sysbench --mysql-host=127.0.0.1 --mysql-port=3306 --mysql-user=${USER} --mysql-password=${PASSWORD} --mysql-db=test --oltp-tables-count=64 --test=tests/db/oltp.lua cleanup

