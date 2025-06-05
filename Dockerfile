# Use a minimal base image
FROM --platform=$BUILDPLATFORM alpine:latest

# Create app directory and user
WORKDIR /app
RUN addgroup -S counter && adduser -S counter -G counter

# Copy script and fix permissions
COPY app.sh .
RUN chmod +x app.sh && chown counter:counter app.sh

# Switch to non-root user
USER counter

# Set env vars with defaults
ENV start=0 increment=1 delay=1

# Use the native /bin/sh (busybox) for minimal overhead
ENTRYPOINT ["/bin/sh", "/app/app.sh"]