# frozen_string_literal: true

require 'dry/monads/result'

module Operations
  # Common operation for present all items
  class Present
    include Dry::Monads::Result::Mixin
    include Import['presenters.page_view_collection_presenter']

    def call(collection)
      Success(
        collection.map do |visit|
          visit[:author_names] = presented_collection(visit)
          visit
        end
      )
    end

    private

    def presented_collection(visit)
      page_view_collection_presenter.call(visit[:author_names]).value!
    end
  end
end
