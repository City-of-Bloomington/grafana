#!/bin/bash
source /etc/default/grafana-server

exec grafana-server \
    --homepath=$GRAFANA_HOME \
    --config=$CONF_FILE \
    --packaging=docker
