curl -fsSL https://tailscale.com/install.sh | sh

if [[ $? -ne 0 ]]; then
  echo "Failed to install Tailscale"
  echo "Make sure you have VPN enabled"
  exit 1
fi
