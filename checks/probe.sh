#!/bin/sh
# /addbook parses a harmless XML record and confirms it.
curl -fsS --max-time 10 --data-urlencode 'xml=<book><isbn>probe42</isbn></book>' http://libraryv1:5000/addbook | grep -q 'You have append this book successfully'
