# frozen_string_literal: true

require 'dry/validation'
require 'dry/monads/result'

module Operations
  module PageViews
    # Operation for validate page views attributes
    class Validate
      include Dry::Monads::Result::Mixin

      def call(params)
        validation = Schemas::PageViewSchema.call(params)

        if validation.success?
          Success(validation.output)
        else
          Failure(validation)
        end
      end
    end
  end
end
