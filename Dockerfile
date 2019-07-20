FROM ruby:2.5.5
MAINTAINER johnliu <johnliutw@hotmail.com>
RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs vim postgis imagemagick
RUN gem install bundler
RUN mkdir -p /tmp
COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install
RUN mkdir -p /app
COPY . /app
WORKDIR /app
