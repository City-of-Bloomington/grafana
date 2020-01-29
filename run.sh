#!/bin/bash
source /etc/default/grafana-server

exec grafana-server                                        \
    --homepath=$GRAFANA_HOME                               \
    --config=$CONF_FILE                                    \
    --packaging=docker                                     \
    "$@"                                                   \
    cfg:default.log.mode="console"                         \
    cfg:default.paths.data="$DATA_DIR"                     \
    cfg:default.paths.logs="$LOG_DIR"                      \
    cfg:default.paths.plugins="$PLUGINS_DIR"               \
    cfg:default.paths.provisioning="$PROVISIONING_CFG_DIR"
