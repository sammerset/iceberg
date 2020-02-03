# frozen_string_literal: true

module Schemas
  PageViewSchema = Dry::Validation.Schema do
    required(:url).filled
    required(:title).filled.int?
    required(:time_spent).filled.int?
    required(:timestamp).filled
    required(:position).filled.int?
  end.freeze
end
