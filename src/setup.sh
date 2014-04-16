#!/usr/bin/env sh

config_dir=./.config
# npm install -g inform inform-daemon

[ -d "${config_dir}" ] && cp -R "${config_dir}" ~/.weechat
[ ! -z "${CONFIGURATION_SCRIPT_URL}" ] && curl "${CONFIGURATION_SCRIPT_URL}" | sh

chmod +x chat
cp chat /usr/local/bin/
