# frozen_string_literal: true

module Transactions
  module Poro
    # Transaction for fetching data from poro
    class Data < Transaction
      step :request_data,  with: 'operations.poro.request_data'
      step :map_data,      with: 'operations.poro.map_data'
    end
  end
end
