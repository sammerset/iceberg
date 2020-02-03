# frozen_string_literal: true

module Transactions
  # Transaction for persist all info (not only from poro)
  class CollectData < Transaction
    include Import['persistence.rom']
    include Import['transactions.poro.data']
    include Import['transactions.poro.data']
    include Import['operations.visits.find_or_create']
    include Import['operations.page_views.bulk_create']

    attr_accessor :errors

    step :compose
    step :decorate, with: 'operations.decorate'
    step :present,  with: 'operations.present'
    map  :update_or_create
    step :result

    def initialize(*args)
      @errors = {}
      super(*args)
    end

    private

    def compose(_)
      @data = data.call
    end

    def update_or_create(data)
      data.each do |visit_attributes|
        page_views = visit_attributes.delete(:author_names)

        result = find_or_create.call(visit_attributes)
        next if result.failure? && log_error(:visits, result.failure.messages)

        result = bulk_create.call(page_views, visit_id: result.value!)
        result.failure? && log_error(:page_views, result.failure)
      end
    end

    def result(_)
      errors.empty? ? Success(success: true) : Failure(errors: errors)
    end

    def log_error(type, error)
      errors[type] = (errors[type] || []).push(error)
    end
  end
end
