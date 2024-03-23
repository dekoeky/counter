# Use a minimal base image
FROM alpine:latest

# Copy the shell script into the container
COPY app.sh /app.sh

# Make the shell script executable
RUN chmod +x /app.sh

# Set the entrypoint to run the shell script
ENTRYPOINT ["/app.sh"]
