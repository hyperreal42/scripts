#!/usr/bin/env python
#
# :author:      Jeffrey Serio <hyperreal64@pm.me>
# :date:        17 Aug 2020
# :version:     0.0.1
#
# This script is used to send POST requests to a Discord webhook
# TODO:
#
# Changelog:

from discord_webhook import DiscordEmbed, DiscordWebhook
import requests
import json 
import sys
import argparse

def main(argv):
    usage_msg = "This program will post a request to a Discord webhook."
    parser = argparse.ArgumentParser(description=usage_msg)
    parser.add_argument("-i", "--input", help="input contents", required=True)
    parser.add_argument("-n", "--username", help="Discord username")
    parser.add_argument("-u", "--url", help="Discord webhook url", required=True)
    args = parser.parse_args()

    contents = args.input
    url = args.url
    
    webhook = DiscordWebhook(url=url, content=contents)
    response = webhook.execute()

if __name__ == "__main__":
    main(sys.argv[1:])

# vim: set filetype=python
