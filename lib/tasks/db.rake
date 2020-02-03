# frozen_string_literal: true

require 'rom'
require 'rom/gateway'
require 'rom/sql/rake_task'
require 'config'
require 'mysql2'

namespace :db do
  task :setup do
    ROM::SQL::RakeSupport.env = ROM.container(:sql, db_url)
  end

  task :create do
    client = Mysql2::Client.new(db_config)
    escaped_db_name = client.escape(db_name)
    client.query("CREATE DATABASE IF NOT EXISTS #{escaped_db_name}")
  end
end

private

def db_url
  Config.load(
    Pathname.new(APP_ROOT),
    'application',
    APP_ENV
  )[:database_url]
end

def db_uri
  URI.parse(db_url)
rescue URI::InvalidURIError
  raise 'Invalid DATABASE_URL'
end

def db_name
  (db_uri.path || '').split('/')[1]
end

def db_config
  {
    host: db_uri.host || 'localhost',
    username: db_uri.user || 'root',
    password: db_uri.password,
    port: db_uri.port
  }.compact
end
