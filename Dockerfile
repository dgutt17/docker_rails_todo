FROM ruby:3.3.5-bookworm

RUN apt-get update
RUN apt-get -y install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm-dev

RUN apt-get -y install vim curl

WORKDIR /todo_list

COPY . ./

RUN gem install bundler

RUN bundle update

RUN bundle install

RUN bundle exec rails assets:precompile
