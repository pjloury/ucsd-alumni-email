FROM listmonk/listmonk:latest

# Expose the port
EXPOSE 8080

# Set the working directory
WORKDIR /listmonk

# The entrypoint is already set in the base image
# Just ensure we're using the right port
ENV LISTMONK_app__address=0.0.0.0:8080
