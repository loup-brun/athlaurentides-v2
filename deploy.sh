#!/bin/bash

USER=louis
DISTDIR=./_site/
REMOTEHOST=athlaurentides.ca
REMOTEDIR=/var/www/athlaurentides.ca

rsync -rv --delete $DISTDIR $USER@$REMOTEHOST:$REMOTEDIR
