FROM        debian:8.0
MAINTAINER  andystanton
RUN         apt-get update -y -qq && \
            apt-get install -y patch curl && \
            curl -sL https://deb.nodesource.com/setup | bash - && \
            apt-get install -y nodejs && \
            apt-get remove -y curl && \
            apt-get clean && \
            rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
