# frozen_string_literal: true

require 'dry/monads/result'

module Operations
  # Common operation for decorate all items
  class Decorate
    include Dry::Monads::Result::Mixin
    include Import['decorators.page_view_decorator']

    def call(collection)
      Success(
        collection.map do |visit|
          visit[:author_names] = decorated_page_views(visit)
          visit
        end
      )
    end

    private

    def decorated_page_views(visit)
      visit[:author_names]
        .each_with_index
        .map { |pw, i| page_view_decorator.call(pw, position: i) }
    end
  end
end
