FROM listmonk/listmonk:latest

# Expose the port (Railway will set the actual port)
EXPOSE 8080

# Set the working directory
WORKDIR /listmonk

# Copy the startup script
COPY start.sh /listmonk/start.sh
RUN chmod +x /listmonk/start.sh

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:${PORT:-8080}/api/health || exit 1

# Use the startup script as entrypoint
ENTRYPOINT ["/listmonk/start.sh"]
