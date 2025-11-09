# Use a small Python base image
FROM python:3.11-slim

# Create app directory
WORKDIR /app

# Copy source files into the image
COPY src/ ./src

# Set working dir to src
WORKDIR /app/src

# Expose port that python -m http.server will use
EXPOSE 8080

# Start the simple HTTP server
CMD ["python", "-m", "http.server", "8080"]
