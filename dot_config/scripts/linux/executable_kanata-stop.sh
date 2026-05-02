#!/bin/bash
# Stop the service and show status
sudo systemctl stop kanata.service
systemctl status kanata.service --no-pager
