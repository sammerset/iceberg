# frozen_string_literal: true

# fix compatible types
require 'dry/types'
require 'dry/types/compat/int'
require 'bundler/setup'

$LOAD_PATH << 'lib'

APP_ROOT = File.dirname(File.expand_path(__dir__))
APP_ENV = ENV.fetch('APP_ENV', 'development').to_sym
ENV['BUNDLE_GEMFILE'] ||= File.join(APP_ROOT, '/', 'Gemfile')

require 'bundler'
Bundler.require(:default, APP_ENV)
