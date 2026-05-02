#!/bin/bash
# Start the service and show status
sudo systemctl start kanata.service
systemctl status kanata.service --no-pager
