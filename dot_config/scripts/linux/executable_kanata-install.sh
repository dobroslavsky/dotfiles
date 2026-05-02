#!/bin/bash

SERVICE_NAME="kanata.service"
DEST_DIR="/etc/systemd/system"

if [ ! -f "$SERVICE_NAME" ]; then
    echo "Error: $SERVICE_NAME not found in the current folder."
    exit 1
fi

echo "Installing $SERVICE_NAME..."

sudo cp "$SERVICE_NAME" "$DEST_DIR/"

sudo chown root:root "$DEST_DIR/$SERVICE_NAME"
sudo chmod 644 "$DEST_DIR/$SERVICE_NAME"

sudo systemctl daemon-reload
sudo systemctl disable "$SERVICE_NAME"

echo "Installation complete. Service is currently disabled for auto-start."
echo "Use './kanata-start.sh' to run it manually."
