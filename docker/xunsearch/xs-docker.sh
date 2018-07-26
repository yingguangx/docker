#!/bin/bash
rm -f tmp/pid.*
echo -n > tmp/docker.log
bin/xs-indexd -b 8383 -l tmp/docker.log -k start
sleep 1
bin/xs-searchd -b 8384 -l tmp/docker.log -k start
sleep 1
tail -f tmp/docker.log
