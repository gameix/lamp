#!/bin/bash
DOCKER_COMPOSE_VERSION="v2.29.7"

if [ -f /usr/local/bin/docker-compose ]; then
  echo "Docker Compose '$(/usr/local/bin/docker-compose --version)' already exists, do you want update? remove '/usr/local/bin/docker-compose' and run script again."
else
  echo "Docker compose not exits, install now"
  # To download and install Compose standalone, run:
  curl -SL https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
  # Apply executable permissions to the standalone binary in the target path for the installation.
  chmod +x /usr/local/bin/docker-compose
  # Verify installation
  /usr/local/bin/docker-compose --version
fi
