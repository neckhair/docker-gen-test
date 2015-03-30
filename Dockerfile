FROM ruby:latest

RUN mkdir /app
WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install

ADD config.ru /app/config.ru

EXPOSE 80
CMD bundle exec rackup --port 80 --host 0.0.0.0
