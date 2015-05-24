#!/bin/bash

USER="user1"
PASSWORD="Changeme_123"
DB="test"

for SSL in on off
do
	for threads in 1 2 4 8 16 32
	do
		./bin/sysbench --mysql-host=localhost --mysql-port=3306 --mysql-user=${USER} --mysql-password=${PASSWORD} --mysql-db=${DB} --mysql-ssl=${SSL} --oltp-tables-count=64 --num-threads=${threads} --oltp-dist-type=uniform --report-interval=10 --max-time=600 --max-requests=0 --test=tests/db/oltp.lua run | tee -a result/mysql-ssl-test-ssl-${SSL}-threads${threads}.result
	done
done

