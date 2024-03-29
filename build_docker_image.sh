#!/bin/bash

docker build -t my-linux-image -f linux/Dockerfile .
docker build -t my-ruby-image -f ruby/Dockerfile .
#docker build -t my-rails-image rails/Dockerfile