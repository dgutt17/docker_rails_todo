FROM my-ruby-image:latest

WORKDIR home
ADD . home
 
RUN gem install bundler
RUN gem env home

COPY Gemfile Gemfile

RUN bundle install

RUN bundle exec rails assets:precompile