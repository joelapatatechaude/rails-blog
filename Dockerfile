FROM docker.io/library/ruby:3.1
COPY . /tmp/src
WORKDIR /tmp/src
RUN bundle install
RUN chgrp -R 0 /tmp/src  && chmod -R g=u /tmp/src
USER 10001
CMD ["./bin/rails", "server",  "--binding",  "0.0.0.0", "-p", "8080"]
