# frozen_string_literal: true

module Persistence
  module Commands
    # Commands for persist visits
    class CreateVisit < ROM::Commands::Create[:sql]
      relation :visits
      register_as :create
      result :one

      use :timestamps
      timestamp :created_at, :updated_at
    end
  end
end
