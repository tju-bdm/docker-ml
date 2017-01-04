#!/bin/bash -e

# entrypoint for launching a java job

OPTS=`getopt -o j:i:o: --long jarName:,input:,output: -n 'parse-options' -- "$@"`
eval set -- "$OPTS"

while true
do
    case "$1" in
        -j | --jarName )
            JAR_NAME=$2
            shift 2
            ;;
        -i | --input )
            INPUT=$2
            shift 2
            ;;
        -o | --output )
            OUTPUT=$2
            shift 2
            ;;
        --)
            shift
            break
            ;;
        *)
            echo "Please offering right options like --jarName, --input, --output"
            exit 1
            ;;
    esac
done

java -jar /opt/jars/${JAR_NAME}.jar -i ${INPUT} -o ${OUTPUT}
