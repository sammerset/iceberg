# frozen_string_literal: true

require 'types'

module Persistence
  module Relations
    # ROM page views schema
    class PageViews < ROM::Relation[:sql]
      schema(:page_views, infer: true) do
        attribute :id, Types::Integer.meta(primary_key: true).default(0)
        associations do
          belongs_to :visit
        end
      end
    end
  end
end
