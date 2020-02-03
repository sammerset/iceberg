# frozen_string_literal: true

require 'json'

module Commands
  # Base class for all commands
  class BaseCommand
    include Import['logger']

    attr_reader :command, :result

    def execute
      process
      log_output
      result_output.to_json
    end

    private

    def process
      raise 'Must be implemented'
    end

    def log_output
      result.success? ? logger.info(log_message) : logger.error(log_message)
    end

    def result_output
      result.success? ? result.value! : result.failure
    end

    def log_message
      "COLLECT_CONSUMER -- #{command.upcase} RESULT -- : #{result_output}"
    end
  end
end
