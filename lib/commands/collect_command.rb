# frozen_string_literal: true

module Commands
  # Command for collect all statistics data
  class CollectCommand < BaseCommand
    include Import['transactions.collect_data']

    COMMAND_COLLECT = 'collect'

    def initialize(*args)
      @command = COMMAND_COLLECT
      super(*args)
    end

    private

    def process
      @result = collect_data.call
    end
  end
end
