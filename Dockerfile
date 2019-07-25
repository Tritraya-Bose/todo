FROM ruby:2.3.3

RUN apt-get update -qq \
  && apt-get install -y build-essential

RUN mkdir /todo
WORKDIR /todo

ADD Gemfile /todo/Gemfile
ADD Gemfile.lock /todo/Gemfile.lock

RUN bundle install

ADD . /todo