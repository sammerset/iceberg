# frozen_string_literal: true

module Mappers
  module Poro
    # Poro page views mapper
    class PageViewMapper < BaseMapper
      map from('/url'),       to('/url')
      map from('/pageTitle'), to('/title')
      map from('/timeSpent'), to('/time_spent')
      map from('/timestamp'), to('/timestamp')
    end
  end
end
