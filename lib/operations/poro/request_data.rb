# frozen_string_literal: true

require 'net/http'
require 'json'

module Operations
  module Poro
    # REST http client for getting data from poro service
    class RequestData
      include Dry::Monads::Result::Mixin

      attr_reader :response

      def call
        @response = Net::HTTP.get_response(source_url)

        return Failure(response.message) unless response.is_a?(Net::HTTPSuccess)

        Success(JSON.parse(response.body))
      end

      private

      def source_url
        URI.parse(App[:config][:poro_url])
      end
    end
  end
end
