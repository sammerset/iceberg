# frozen_string_literal: true

require 'dry/monads/result'

module Operations
  module Visits
    # Operation for creation and ensure visits was created
    class FindOrCreate
      include Import['persistence.rom']
      include Import['operations.visits.validate']
      include Import['operations.visits.create']
      include Dry::Monads::Result::Mixin

      def call(attrs)
        visits.transaction do
          find_visit(attrs[:evid]) ||
            (validate_visit(attrs).success? ? create.call(attrs) : @validation)
        end
      end

      private

      def validate_visit(attrs)
        @validation = validate.call(attrs)
      end

      def visits
        rom.relations[:visits]
      end

      def find_visit(evid = nil)
        visit = visits.find_by_evid(evid)
        return unless visit

        Success(visit[:id])
      end
    end
  end
end
