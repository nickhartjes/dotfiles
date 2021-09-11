#!/bin/bash
#  __   __   __    __  
# |  \ |  | |  |  |  | 
# |   \|  | |  |__|  |  Nick Hartjes
# |    `  | |   __   |  https://nickhartjes.nl
# |  |\   | |  |  |  |  https://github.com/nickhartjes/
# |__| \__| |__|  |__| 
#    

# ~/.config/.bitwarden-cli/config.json
# https://bitwarden.com/help/article/personal-api-key/
# {
#     "clientId":"",
#     "clientSecret":"",
#     "attachmentName":"",
#     "itemId":""
# }

CONFIG=~/.config/.bitwarden-cli/config.json

export BW_CLIENTID=$(jq -r '.clientId' $CONFIG)
export BW_CLIENTSECRET=$(jq -r '.clientSecret' $CONFIG)

bw login --apikey
export BW_SESSION=$(bw unlock --raw)