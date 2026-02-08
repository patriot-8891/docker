```Shell
# Build
cd {IAMGE_PATH}
docker build --rm --no-cache --tag {IAMGE_NAME} .

# Create container
docker run --detach --restart unless-stopped --network host --init --name {CONTAINER_NAME} {IAMGE_NAME}

# Delete container
docker rm {CONTAINER_NAME}

# Stop container
docker stop {CONTAINER_NAME}

# Start container
docker start {CONTAINER_NAME}

# Run shell on running container
docker exec --interactive --tty {CONTAINER_NAME} /bin/sh -il

# Logs
docker logs --follow {CONTAINER_NAME}
```