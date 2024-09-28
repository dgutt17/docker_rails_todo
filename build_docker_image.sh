#!/bin/bash

docker build -t my-ruby-image -f docker/ruby/Dockerfile .
docker build -t my-rails-image -f docker/rails/Dockerfile .