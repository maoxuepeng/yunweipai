#!/bin/bash
USER="user1"
PASSWORD="Changeme_123"
DB="test"
./bin/sysbench --mysql-host=localhost --mysql-port=3306 --mysql-user=${USER} --mysql-password=${PASSWORD} --mysql-db=test --oltp-tables-count=64 --num-threads=8 --test=tests/db/parallel_prepare.lua run

