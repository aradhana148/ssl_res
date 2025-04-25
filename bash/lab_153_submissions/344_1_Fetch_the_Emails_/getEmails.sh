#!/bin/bash

if (( $# != 1 )); then
    echo "Usage: ./getEmails.sh <valid_file.txt>"
elif [[ ! -e $1 ]]; then
    echo "Usage: ./getEmails.sh <valid_file.txt>"
else
    grep -E "[a-zA-Z0-9]+@[a-zA-Z]+\.iitb\.ac\.in" $1 > emails.txt
    sort -r emails.txt > sortedEmails.txt
    grep -E "[a-zA-Z0-9]+@cse\.iitb\.ac\.in" sortedEmails.txt > cseEmails.txt
fi