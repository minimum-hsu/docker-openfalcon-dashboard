#!/bin/bash
tar -zxf $PACKDIR/$PACKFILE -C $WORKDIR
cp $CONFIGDIR/$CONFIGFILE $WORKDIR/rrd/$CONFIGFILE
cp $CONFIGDIR/gunicorn.conf $WORKDIR
virtualenv $WORKDIR/env
pip install -r /home/dashboard/pip_requirements.txt
$WORKDIR/control restart
/bin/bash
