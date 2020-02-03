#!/bin/bash

set -e
BUNDLE_IGNORE_CONFIG=1 bundle install

bundle exec rake db:migrate || bundle exec rake db:create && bundle exec rake db:migrate

bundle exec ruby fake_server.rb &

exec "/bin/bash"
