# frozen_string_literal: true

require 'types'

module Persistence
  module Relations
    # ROM visits schema
    class Visits < ROM::Relation[:sql]
      schema(:visits, infer: true) do
        attribute :id, Types::Integer.meta(primary_key: true).default(0)
        associations do
          has_many :page_views
        end
      end

      def find_by_evid(evid)
        where(evid: evid).first
      end
    end
  end
end
