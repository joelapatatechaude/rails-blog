FROM docker.io/library/ruby:3.1
COPY . /tmp/src
WORKDIR /tmp/src
RUN bundle install
CMD ["./bin/rails", "server",  "--binding",  "0.0.0.0", "-p", "8080"]
