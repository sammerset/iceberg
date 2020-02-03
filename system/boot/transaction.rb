# frozen_string_literal: true

require 'dry/transaction'

# App transactions class
class Transaction
  include Dry::Transaction(container: App)
end
