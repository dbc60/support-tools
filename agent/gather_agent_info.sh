#!/bin/bash

# Copyright (c) 2017 All Rights Reserved, http://www.threatstack.com
echo "/* Gathering Threat Stack agent information ****************************/"

echo "/* cloudsight version **************************************************/"
cloudsight version
echo "/* cloudsight status ***************************************************/"
cloudsight status
echo "/* debug cloudsight status *********************************************/"
DEBUG=cloudsight cloudsight status
if hash dpkg-query 2>/dev/null; then
    echo "/* dpkg-query -l | grep threatstack ********************************/"
    dpkg-query -l | grep threatstack
fi
echo "/* cat /opt/threatstack/cloudsight/config/config.json ******************/"
sudo cat /opt/threatstack/cloudsight/config/config.json
echo -e "\n"
echo "/* host app.threatstack.com ********************************************/"
host app.threatstack.com
echo "/* ll opt **************************************************************/"
ls -l /opt
echo "/* ll opt threatstack **************************************************/"
ls -l /opt/threatstack
echo "/* ll opt threatstack cloudsight pids **********************************/"
ls -l /opt/threatstack/cloudsight/pids
echo "/* Done gathering Threat Stack agent information ***********************/"
