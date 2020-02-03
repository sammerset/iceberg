# frozen_string_literal: true

App.namespace 'persistence' do |persistence|
  persistence.boot :rom do |container|
    init do
      use :config

      require 'sequel'
      require 'rom'

      Sequel.database_timezone = :utc
      Sequel.application_timezone = :local

      rom_config = ROM::Configuration.new(
        :sql,
        container[:config].database_url,
        extensions: [:error_sql],
        max_connections: container[:config].database_max_conn,
        logger: App['logger']
      )

      persistence.register('config', rom_config)
    end

    start do
      config = container['persistence.config']
      config.auto_registration(container.root.join('lib/persistence'))
      persistence.register('rom', ROM.container(config))
    end
  end
end
