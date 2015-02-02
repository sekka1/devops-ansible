#!/bin/sh

NODE_NUMBER=1

SERVICE_NAME={{ service_name }}-${NODE_NUMBER}.service

curl -v -X DELETE -L http://{{ lb_coreos_fleet }}:{{ FLEET_API_PORT }}/{{ FLEET_API_BASE_PATH }}/units/${SERVICE_NAME}


NODE_NUMBER=2

SERVICE_NAME={{ service_name }}-${NODE_NUMBER}.service

curl -v -X DELETE -L http://{{ lb_coreos_fleet }}:{{ FLEET_API_PORT }}/{{ FLEET_API_BASE_PATH }}/units/${SERVICE_NAME}


NODE_NUMBER=3

SERVICE_NAME={{ service_name }}-${NODE_NUMBER}.service

curl -v -X DELETE -L http://{{ lb_coreos_fleet }}:{{ FLEET_API_PORT }}/{{ FLEET_API_BASE_PATH }}/units/${SERVICE_NAME}