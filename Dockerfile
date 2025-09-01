# Dummy Dockerfile for testing GitHub Actions

# Start from a small base image
FROM ubuntu:22.04

# Add a label (metadata only)
LABEL maintainer="your-name@example.com"

# Run a simple command (update package index)
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy files (none needed, but keeps Docker happy if you add code later)
COPY . /app

# Default command (prints hello)
CMD ["echo", "Hello from dummy Dockerfile build!"]
