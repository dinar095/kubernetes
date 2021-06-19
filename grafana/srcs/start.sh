#!/bin/sh
./bin/grafana-server && kill -s SIGTERM $(cat supervisord.pid)
