# frozen_string_literal: true

require 'types'
require 'yaml'

# App config
class Config < Dry::Struct
  RequiredString = Types::Strict::String.constrained(min_size: 1)

  attribute :database_url, RequiredString
  attribute :database_max_conn, RequiredString
  attribute :poro_url, RequiredString

  def self.load(root, name, env)
    path = root.join('config').join("#{name}.yml")

    config = schema.keys.each_with_object({}) do |key, memo|
      value = ENV.fetch(
        key.to_s.upcase,
        yaml(path).fetch(env.to_s, {})[key.to_s]
      )

      memo[key] = value
    end

    new(config)
  end

  def self.yaml(path)
    File.exist?(path) ? YAML.load_file(path) : {}
  end
end
