FROM ruby:2.4.1
WORKDIR /app
RUN mkdir -p /app/tmp/cache \
  && mkdir -p /app/tmp/pids \
  && mkdir -p /app/tmp/sockets
RUN apt-get update -qq && \
    apt-get install -y apt-utils \
                       build-essential \
                       libpq-dev \
                       nodejs \
                       mysql-client
# docker-compose run --rm rails bundle install --path vendor/bundle --jobs=4

ENV BUNDLE_PATH /bundle
