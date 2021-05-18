ARG RUBY_VERSION=2.7.1
FROM ruby:$RUBY_VERSION

RUN gem update --system

COPY . /src
WORKDIR /src

RUN bundle install
RUN gem update bundler
