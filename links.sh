#!/bin/bash

ln -s /srv/salt-states/pillar /srv/pillar
ln -s /srv/salt-states/roots /srv/salt

/bin/cp /srv/salt-states/minion /etc/salt/minion

