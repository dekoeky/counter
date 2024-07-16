

# Use a minimal base image
FROM --platform=$BUILDPLATFORM alpine:latest

# Install Bash
RUN apk add --no-cache bash

# Create a new user and group
RUN addgroup -S counter && adduser -S counter -G counter

WORKDIR /app

# Copy the shell script into the container
COPY app.sh .

# Make the shell script executable
RUN chmod +x /app/app.sh


# Change ownership of the script to the non-root user
RUN chown counter:counter /app/app.sh

# Set App User
USER counter

# Set default variable values
ENV start=0
ENV increment=1
ENV delay=1

# Set the entrypoint to run the shell script
ENTRYPOINT ["/bin/bash", "/app/app.sh"]