#!/bin/sh -x

SERVICE_NAME={{ mongo_service_name }}
HOSTNAME={{ hostname }}

DOCKER_NAME=mongo

RESULT=$(curl -v -X PUT -L http://{{ lb_coreos_fleet }}:{{ FLEET_API_PORT }}/{{ FLEET_API_BASE_PATH }}/units/${SERVICE_NAME} \
-H 'Content-Type: application/json' \
-d '{
  "desiredState": "launched",
  "options": [
    {
      "section": "Unit",
      "name": "Description",
      "value": "MongoDB Node"
    },
    {
      "section": "Unit",
      "name": "After",
      "value": "docker.service"
    },
    {
      "section": "Service",
      "name": "TimeoutStartSec",
      "value": "0"
    },
    {
      "section": "Service",
      "name": "User",
      "value": "core"
    },
    {
      "section": "Service",
      "name": "ExecStartPre",
      "value": "-/usr/bin/docker kill '${DOCKER_NAME}'"
    },
    {
      "section": "Service",
      "name": "ExecStartPre",
      "value": "-/usr/bin/docker rm '${DOCKER_NAME}'"
    },
    {
      "section": "Service",
      "name": "ExecStartPre",
      "value": "/usr/bin/docker pull {{ docker_image_mongo }}"
    },
    {
      "section": "Service",
      "name": "ExecStart",
      "value": "/usr/bin/docker run --name '${DOCKER_NAME}' -v {{ mongo_db_data_directory }}:/data/db -v {{ mongo_db_key_file_directory }}:/opt/keyfile --hostname='${HOSTNAME}' -p {{ EXPOSED_MONGO_DB_PORT }}:27017 {{ docker_image_mongo }} --smallfiles --keyFile /opt/keyfile/mongodb-keyfile --replSet \"{{ mongo_db_replSet_name }}\""
    },
    {
      "section": "Service",
      "name": "ExecStop",
      "value": "-/usr/bin/docker stop '${DOCKER_NAME}'"
    },
    {
      "section": "X-Fleet",
      "name": "Conflicts",
      "value": "mongo*"
    }
  ]
}');
