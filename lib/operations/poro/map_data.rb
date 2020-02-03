# frozen_string_literal: true

module Operations
  module Poro
    # Operation for map poro's data
    class MapData
      include Dry::Monads::Result::Mixin
      include Import['mappers.poro.main_mapper']

      attr_reader :response

      def call(dataset)
        Success(main_mapper.normalize(dataset))
      end
    end
  end
end
