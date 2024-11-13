
#!/bin/bash

# URL for the latest release of the lima CLI binary
CLI_URL="https://example.com/releases/lima_latest.tar.gz"

# Directory where the CLI will be installed
INSTALL_DIR="/usr/local/bin"

# Function to display a message
function print_message() {
    echo "=> $1"
}

# Download the CLI
print_message "Downloading lima CLI from $CLI_URL..."
curl -L $CLI_URL -o lima_latest.tar.gz

# Check if the download was successful
if [[ $? -ne 0 ]]; then
    echo "Failed to download lima CLI. Please check the URL and try again."
    exit 1
fi

# Extract the downloaded archive
print_message "Extracting the CLI..."
tar -xzf lima_latest.tar.gz -C $INSTALL_DIR

# Ensure the binary is executable
chmod +x $INSTALL_DIR/lima

# Clean up the tar file
rm lima_latest.tar.gz

# Confirmation message
print_message "Lima CLI installed successfully! You can now use 'lima' as a command."


