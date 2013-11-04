#!/bin/bash

ln -s /srv/salt-stack/pillar /srv/pillar/
ln -s /srv/salt-stack/roots /srv/salt

/bin/cp -i /srv/salt-stack/minion /etc/salt/minion

