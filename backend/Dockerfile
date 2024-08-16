FROM ruby:3.2.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 4422

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
