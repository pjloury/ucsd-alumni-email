FROM listmonk/listmonk:latest

# Expose the port (Railway will set the actual port)
EXPOSE 8080

# Set the working directory
WORKDIR /listmonk

# Railway will provide the PORT environment variable
ENV LISTMONK_app__address=0.0.0.0:${PORT:-8080}

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:${PORT:-8080}/api/health || exit 1
