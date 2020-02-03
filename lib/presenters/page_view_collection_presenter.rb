# frozen_string_literal: true

require 'dry/monads/result'

module Presenters
  # Presenter for page views collection
  class PageViewCollectionPresenter
    include Dry::Monads::Result::Mixin

    def call(collection)
      Success(
        collection.sort_by { |pw| pw[:timestamp].to_s }
      )
    end
  end
end
