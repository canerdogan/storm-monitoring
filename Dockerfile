FROM node:10.7.0-stretch
#FROM ruby:2.7.1-slim-buster
RUN apt update
ENV PATH="/app/bin:${PATH}"
RUN apt install -y yarn git build-essential ruby-full patch ruby-dev zlib1g-dev liblzma-dev postgresql libpq-dev
RUN mkdir /app
WORKDIR /app
RUN git clone https://github.com/ProctorU/storm.git /app
RUN gem install bundler
RUN bundle update --bundler
RUN bundle install
RUN yarn install
RUN rails db:setup
EXPOSE 3000
RUN foreman start -f Procfile.dev
