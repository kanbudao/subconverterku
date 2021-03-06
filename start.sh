#!/bin/sh

# config
[[ "$MY_PREF_INI" != "" ]] && wget -qO- $MY_PREF_INI | sed "s/port=[0-9]+$/port=$PORT/g" >/subconverter/pref.ini
sed -i -e "s/port=25500/port=$PORT/g" -e "s/api_access_token=password/api_access_token=$API_TOKEN/g" /subconverter/pref.ini
wget --no-check-certificate --no-cache --no-cookies -O /subconverter/profiles/pro.ini $MY_PRO_INI

# start
/subconverter/subconverter
