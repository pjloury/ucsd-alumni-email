FROM listmonk/listmonk:latest

# Expose the port
EXPOSE 8080

# Set working directory
WORKDIR /listmonk

# The base image already has the correct entrypoint
# We just need to ensure the port is configurable
ENV PORT=8080
