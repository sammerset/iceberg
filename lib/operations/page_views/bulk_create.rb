# frozen_string_literal: true

require 'dry/monads/result'

module Operations
  module PageViews
    # builder for bulk page views creating
    class BulkCreate
      include Import['persistence.rom']
      include Import['operations.page_views.validate']
      include Dry::Monads::Result::Mixin

      attr_reader :failures

      def initialize(*args)
        @failures = []
        super(*args)
      end

      def call(page_views, attrs = {})
        page_views.each { |pw| pw.merge!(attrs) }

        if (page_views = validate_items(page_views)).any?
          Success(page_views_dataset.insert_ignore.multi_insert(page_views))
        end

        failures.any? ? Failure(failures) : Success(success: true)
      rescue StandardError => e
        Failure(e)
      end

      private

      def page_views_dataset
        rom.relations[:page_views].dataset
      end

      def visit(evid)
        @visit ||= visits.find_by_evid(evid)
      end

      def validate_items(page_views)
        page_views.select do |a|
          r = validate.call(a)
          (@failures.push(r.failure.messages) if r.failure?).nil?
        end
      end
    end
  end
end
