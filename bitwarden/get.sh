#!/bin/bash
#  __   __   __    __  
# |  \ |  | |  |  |  | 
# |   \|  | |  |__|  |  Nick Hartjes
# |    `  | |   __   |  https://nickhartjes.nl
# |  |\   | |  |  |  |  https://github.com/nickhartjes/
# |__| \__| |__|  |__| 
#    

source login.sh

ITEM_ID=$(jq -r '.itemId' $CONFIG)
ATTACHTMENT=$(jq -r '.attachmentName' $CONFIG)

FILENAME_LATEST=$ATTACHTMENT-latest.zip

zip -r  $FILENAME_DATE \
	~/.aws \
	~/.backup \
	~/.gitconfig \
	~/.ssh \
	~/.config/.bitwarden-cli

bw get attachment $FILENAME_LATEST --itemid=$ITEM_ID