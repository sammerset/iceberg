# frozen_string_literal: true

App.boot :config do |container|
  init do
    require 'config'
  end

  start do
    register(
      'config',
      Config.load(container.root, 'application', container.env)
    )
  end
end
