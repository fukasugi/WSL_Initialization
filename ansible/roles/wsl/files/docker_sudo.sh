#!/bin/bash

function main() {
    # add sudo privilege on docker service
    if [ -z "$(sudo grep 'NOPASSWD:/usr/sbin/service docker' /etc/sudoers)" ]; then
        echo "$USER ALL=(ALL) NOPASSWD:/usr/sbin/service docker *" | sudo EDITOR='tee -a' visudo
    fi
}

main