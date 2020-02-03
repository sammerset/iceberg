# frozen_string_literal: true

module Persistence
  module Commands
    # Commands for persist page views
    class CreatePageView < ROM::Commands::Create[:sql]
      relation :page_views
      register_as :create
      result :one

      use :timestamps
      timestamp :created_at, :updated_at
    end
  end
end
