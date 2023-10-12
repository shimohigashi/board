FROM ruby:2.7.7
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install nokogiri --platform=ruby
RUN gem install bundler:1.17.2
RUN bundle install
COPY . /app
