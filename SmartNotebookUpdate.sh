#!/bin/bash
# Directory to store the scripts
TEMP_DIR="/tmp/update-scripts"
#delete the temp directory if it exists already so it will not cause errors
rm -rf $TEMP_DIR

# Ensure cleanup on exit
trap 'rm -rf $TEMP_DIR' EXIT

# Create a temporary directory
mkdir -p $TEMP_DIR
cd $TEMP_DIR

# Set the branch 
#This means is will pull the rest of the script from SSSDupdate main repo
branch="main"

# Download necessary scripts
curl -L -o curl.sh https://raw.githubusercontent.com/DominicVillaniSSSD/SSSDupdate/$branch/curl.sh
curl -L -o install_handlers.sh https://raw.githubusercontent.com/DominicVillaniSSSD/SSSDupdate/$branch/install_handlers.sh
curl -L -o logo.sh https://raw.githubusercontent.com/DominicVillaniSSSD/SSSDupdate/$branch/logo.sh
curl -L -o setup.sh https://raw.githubusercontent.com/DominicVillaniSSSD/SSSDupdate/$branch/setup.sh

# Source or execute the downloaded scripts as needed
source curl.sh
source install_handlers.sh
source logo.sh
source setup.sh

#sets smart notebook url to smart_notebook22.1_url if os version is 11-10.15
 if [[ "$OS_VERSION" == 11.* || "$OS_VERSION" == 10.15.* ]]; then
     smart_notebook_url="$smart_notebook22_1_url"
 fi

#Prints logo
print_logo
echo "This will Download and install $smart_notebook_url "

#Checks architecture
check_architecture

install_application_from_url "$smart_notebook_url"

print_finished

# Clean up
cd ..
rm -rf $TEMP_DIR
