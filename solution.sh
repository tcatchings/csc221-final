#!/bin/bash

uniq_hosts () {
    echo "This is a list of unique hosts: " 
    echo " " #Whitespace to make it look less sloppy
    cat nasa.tsv | awk '{print $1}' | sort -u
    echo " " #More whitespace to make it look less sloppy
}

popular_urls () {
    echo "This is a list of the most popular URLs: "
    echo " " #Whitespace to make it look less sloppy
    cat nasa.tsv | awk '{print $6 " " $5}' | sort -u | sort -n | tail -10
    echo " " #More whitespace for slop elimination purposes
}

uniq_hosts
popular_urls
