#!/bin/bash

if [ "${TEMPLATE_REPLACE}" = "true" ]; then
    envsubst < /usr/src/app/config/config.json.template > /usr/src/app/config/config.json
fi

DEBUG=edumeet:* yarn run prodstart $0 $@
