#!/bin/bash -e

# entrypoint for launching a java job

OPTS=`getopt -o j: --long jarName: -n 'parse-options' -- "$@"`
eval set -- "$OPTS"

while true
do
    case "$1" in
        -j | --jarName )
            JAR_NAME=$2
            shift 2
            ;;
        --)
            shift
            break
            ;;
        *)
            echo "Please offering right options like --jarName"
            exit 1
            ;;
    esac
done

java -jar /opt/jars/${JAR_NAME}.jar $@
