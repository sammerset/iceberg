# frozen_string_literal: true

App.boot :logger do |container|
  init do
    require 'logger'
  end

  start do
    register(
      'logger',
      Logger.new(container.root.join("log/#{container.config.env}.log"))
    )
  end
end
