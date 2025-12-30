# Pull the baseimage.
FROM jlesage/baseimage-gui:debian-12-v4

# Install xterm.
RUN apt update && apt install -y nextcloud-desktop

# Copy the start script.
COPY startapp.sh /startapp.sh

# Set the application name.
RUN set-cont-env APP_NAME "nextcloud-desktop"