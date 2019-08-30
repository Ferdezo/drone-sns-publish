FROM mesosphere/aws-cli

ADD ./scripts/aws-sns.sh /bin

RUN chmod a+x /bin/aws-sns.sh

ENTRYPOINT /bin/aws-sns.sh