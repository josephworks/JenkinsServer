#!/bin/sh

echo "Re(Starting) Jenkins"
if (( $(ps -ef | grep -v grep | grep jenkins | wc -l) > 0 ))
then
echo "Jenkins is already running."
else
/etc/init.d/jenkins stop
/etc/init.d/jenkins start
if (( $(ps -ef | grep -v grep | grep jenkins | wc -l) > 0 ))
then
echo "Jenkins re(start)ed successfuly."
else
echo "Jenkins could not be restarted."
fi
fi
