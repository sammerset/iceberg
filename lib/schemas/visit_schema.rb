# frozen_string_literal: true

require 'dry/validation/messages/i18n'

module Schemas
  VisitSchema = Dry::Validation.Schema do
    configure do
      config.messages = :i18n

      def evid?(value)
        ! /\A[A-z0-9]{8}-[A-z0-9]{4}-[A-z0-9]{4}-[A-z0-9]{4}-[A-z0-9]{12}\z/
          .match(value).nil?
      end
    end

    required(:evid).filled(:evid?)
    required(:vendor_site_id).filled.int?
    required(:vendor_visit_id).filled.int?
    required(:visit_ip).filled
    required(:vendor_visitor_id).filled.int?
  end.freeze
end
