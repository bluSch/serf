#!/bin/bash
NODE_SETUP_URL="https://raw.github.com/hashicorp/serf/master/demo/setup_load_balancer.sh?login=mitchellh&token=6dcf0bcc793ca437da6d77746fb810b7"

SERF_SETUP_URL=""

# Setup the node itself
wget -O - $NODE_SETUP_URL | bash

# Setup the serf agent
export SERF_ROLE="lb"
wget -O - $SERF_SETUP_URL | bash
