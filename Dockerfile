FROM alpine:3.20

# Install rsync and inotify-tools
RUN apk add --no-cache rsync inotify-tools bash

# Copy the sync script
COPY sync.sh /sync.sh
RUN chmod +x /sync.sh

CMD ["/sync.sh"]
