# frozen_string_literal: true

require 'dry/system/container'

# App container
class App < Dry::System::Container
  use :env, inferrer: -> { APP_ENV }

  configure do |config|
    config.root = APP_ROOT
    config.auto_register = %w[lib]
  end

  load_paths!('lib')

  def self.run
    App['commands.collect_command'].execute
  end
end
