#!/bin/bash
ssh-keygen -f ~/.ssh/known_hosts -R `cat ./.dots/ipv4`
rm -rf .dots
exit 0