# frozen_string_literal: true

require 'dry-types'

# App types
module Types
  include Dry::Types.module
  Dry::Types.load_extensions(:maybe)
end
