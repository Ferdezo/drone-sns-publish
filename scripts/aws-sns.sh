#!/bin/sh

set -e

if [ -z $PLUGIN_TOPIC_ARN ];
then
    echo "Error: please provide topic ARN to publish to"
    exit 1
fi

if [ -z $PLUGIN_MESSAGE ];
then
    echo "Error: please provide publish message"
    exit 1
fi

if [ -z $PLUGIN_SUBJECT ];
then
    PLUGIN_SUBJECT="Drone Message"
fi

echo "Sending message: ${PLUGIN_MESSAGE} with subject: ${PLUGIN_SUBJECT} to topic: ${PLUGIN_TOPIC_ARN}"

aws sns publish \
--topic-arn "${PLUGIN_TOPIC_ARN}" \
--message "${PLUGIN_MESSAGE}" \
--subject "${PLUGIN_SUBJECT}"