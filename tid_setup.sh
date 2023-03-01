#!/bin/bash

filename="/etc/pam.d/sudo"
if grep -q "tid" "$filename"; then
  echo "Touch ID for sudo command has already been configured."
else
  sudo sed -i'.bak' -e '1a\
auth       sufficient     pam_tid.so' "$filename"
  echo "Touch ID for sudo command is configured successfully"
fi

