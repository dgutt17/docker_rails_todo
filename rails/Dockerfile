FROM my-ruby-image:latest

WORKDIR /home

COPY ../rails_todo /home

RUN bundle install

RUN bundle exec rails assets:precompile