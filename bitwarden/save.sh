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

DATE=`date +"%Y-%m-%d"`
FILENAME_DATE=$ATTACHTMENT-$DATE.zip
FILENAME_LATEST=$ATTACHTMENT-latest.zip

zip -r  $FILENAME_DATE \
	~/.aws \
	~/.backup \
	~/.gitconfig \
	~/.ssh \
	~/.config/.bitwarden-cli

bw create attachment --file $FILENAME_DATE --itemid $ITEM_ID
mv $FILENAME_DATE $FILENAME_LATEST
bw create attachment --file $FILENAME_LATEST --itemid $ITEM_ID
rm $FILENAME_LATEST 