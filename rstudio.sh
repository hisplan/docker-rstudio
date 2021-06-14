#!/bin/bash

usage()
{
cat << EOF
USAGE: `basename $0` [options]
    -p  port (e.g. 8787)
EOF
}

while getopts "p:h" OPTION
do
    case $OPTION in
        p) port=$OPTARG ;;
        h) usage; exit 1 ;;
        *) usage; exit 1 ;;
    esac
done

if [ -z "$port" ]
then
    usage
    exit 1
fi

docker run -d \
    -p ${port}:${port} \
    -e ROOT=TRUE \
    -e PASSWORD=123 \
    -v $(pwd)/workspace:/home/rstudio/workspace \
    rocker/rstudio:4.1.0

open http://localhost:${port}
