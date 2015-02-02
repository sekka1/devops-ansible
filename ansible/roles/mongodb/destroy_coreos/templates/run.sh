#!/bin/sh

SERVICE_NAME={{ mongo_service_name }}

curl -v -X DELETE -L http://{{ lb_coreos_fleet }}:{{ FLEET_API_PORT }}/{{ FLEET_API_BASE_PATH }}/units/${SERVICE_NAME}