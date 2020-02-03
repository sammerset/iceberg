# frozen_string_literal: true

require 'dry/monads/result'

module Operations
  module Visits
    # Operation for visits creation
    class Create
      include Import['persistence.rom']
      include Dry::Monads::Result::Mixin

      def call(attrs)
        result = visits.insert(attrs)

        if result
          Success(result)
        else
          Failure(:cant_insert_item_to_database)
        end
      rescue StandardError => e
        Failure(e)
      end

      def visits
        rom.relations[:visits]
      end
    end
  end
end
