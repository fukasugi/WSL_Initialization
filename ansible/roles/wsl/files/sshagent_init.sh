#!/bin/bash

function main() {
    # automatic ssh agent start when wsl distro starts
    if [ -z "$(grep 'SSH Agent' ~/.bashrc)" ]; then
        printf "\n\n" >> ~/.bashrc
        curl $1 >> ~/.bashrc
    fi
}

main $1