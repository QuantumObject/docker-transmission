#!/bin/sh

exec chpst -u debian-transmission svlogd -tt /var/log/transmission/
