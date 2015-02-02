#!/bin/sh -x

NODE_NUMBER=1

SERVICE_NAME={{ service_name }}-${NODE_NUMBER}.service

DOCKER_NAME=redis-sentinal

RESULT=$(curl -v -X PUT -L http://{{ lb_coreos_fleet }}:{{ FLEET_API_PORT }}/{{ FLEET_API_BASE_PATH }}/units/${SERVICE_NAME} \
-H 'Content-Type: application/json' \
-d '{
  "desiredState": "launched",
  "options": [
    {
      "section": "Unit",
      "name": "Description",
      "value": "Redis server"
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
      "value": "/usr/bin/docker pull {{ docker_image_redis }}"
    },
    {
      "section": "Service",
      "name": "ExecStart",
      "value": "/usr/bin/docker run --name '${DOCKER_NAME}' --net=host -v /home/core/redis-files/sentinel.conf:/opt/sentinel.conf -p {{ EXPOSED_REDIS_PORT }}:6379 {{ docker_image_redis }} redis-server /opt/sentinel.conf --sentinel"
    },
    {
      "section": "Service",
      "name": "ExecStop",
      "value": "-/usr/bin/docker stop '${DOCKER_NAME}'"
    },
    {
      "section": "X-Fleet",
      "name": "MachineMetadata",
      "value": "name=db'${NODE_NUMBER}'"
    }
  ]
}');

NODE_NUMBER=2

SERVICE_NAME={{ service_name }}-${NODE_NUMBER}.service

DOCKER_NAME=redis-sentinal

RESULT=$(curl -v -X PUT -L http://{{ lb_coreos_fleet }}:{{ FLEET_API_PORT }}/{{ FLEET_API_BASE_PATH }}/units/${SERVICE_NAME} \
-H 'Content-Type: application/json' \
-d '{
  "desiredState": "launched",
  "options": [
    {
      "section": "Unit",
      "name": "Description",
      "value": "Redis server"
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
      "value": "/usr/bin/docker pull {{ docker_image_redis }}"
    },
    {
      "section": "Service",
      "name": "ExecStart",
      "value": "/usr/bin/docker run --name '${DOCKER_NAME}' --net=host -v /home/core/redis-files/sentinel.conf:/opt/sentinel.conf -p {{ EXPOSED_REDIS_PORT }}:6379 {{ docker_image_redis }} redis-server /opt/sentinel.conf --sentinel"
    },
    {
      "section": "Service",
      "name": "ExecStop",
      "value": "-/usr/bin/docker stop '${DOCKER_NAME}'"
    },
    {
      "section": "X-Fleet",
      "name": "MachineMetadata",
      "value": "name=db'${NODE_NUMBER}'"
    }
  ]
}');

NODE_NUMBER=3

SERVICE_NAME={{ service_name }}-${NODE_NUMBER}.service

DOCKER_NAME=redis-sentinal

RESULT=$(curl -v -X PUT -L http://{{ lb_coreos_fleet }}:{{ FLEET_API_PORT }}/{{ FLEET_API_BASE_PATH }}/units/${SERVICE_NAME} \
-H 'Content-Type: application/json' \
-d '{
  "desiredState": "launched",
  "options": [
    {
      "section": "Unit",
      "name": "Description",
      "value": "Redis server"
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
      "value": "/usr/bin/docker pull {{ docker_image_redis }}"
    },
    {
      "section": "Service",
      "name": "ExecStart",
      "value": "/usr/bin/docker run --name '${DOCKER_NAME}' --net=host -v /home/core/redis-files/sentinel.conf:/opt/sentinel.conf -p {{ EXPOSED_REDIS_PORT }}:6379 {{ docker_image_redis }} redis-server /opt/sentinel.conf --sentinel"
    },
    {
      "section": "Service",
      "name": "ExecStop",
      "value": "-/usr/bin/docker stop '${DOCKER_NAME}'"
    },
    {
      "section": "X-Fleet",
      "name": "MachineMetadata",
      "value": "name=db'${NODE_NUMBER}'"
    }
  ]
}');
