#!/bin/bash

function main() {
    # add automatic docker start statement if .bashrc does not contain "docker" string
    if [ -z "$(grep docker ~/.bashrc)" ]; then
        printf "\n" >> ~/.bashrc
        curl $1 >> ~/.bashrc
    fi
}

main $1