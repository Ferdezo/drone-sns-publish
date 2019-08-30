#!/bin/sh

set -e

if [ -z $TOPIC_ARN ];
then
    echo "Error: please provide topic ARN to publish to"
    exit 1
fi

if [ -z $MESSAGE ];
then
    echo "Error: please provide publish message"
    exit 1
fi

if [ -z $SUBJECT ];
then
    SUBJECT="Drone Message"
fi

echo "Sending message: ${MESSAGE} with subject: ${SUBJECT} to topic: ${TOPIC_ARN}"

aws sns publish \
--topic-arn ${TOPIC_ARN} \
--message ${MESSAGE} \
--subject ${SUBJECT}