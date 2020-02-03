# frozen_string_literal: true

require 'mappers/poro/base_mapper'
require 'mappers/poro/visit_mapper'

module Mappers
  module Poro
    # Main poro mapper
    class MainMapper < BaseMapper
      def normalize(input)
        input.map { |h| VisitMapper.normalize(h) }
      end
    end
  end
end
