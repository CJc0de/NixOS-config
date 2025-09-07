#/usr/bin/env bash

sudo -u cjcode cat /home/cjcode/.config/vesktop/settings.json | tee ./vesktop-settings.json >/dev/null
sudo -u cjcode cat /home/cjcode/.config/vesktop/settings/settings.json | tee ./vencord-settings.json >/dev/null

