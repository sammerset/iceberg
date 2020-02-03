# frozen_string_literal: true

module Decorators
  # Decorator for page views
  class PageViewDecorator < BaseDecorator
    attr_reader :object

    def call(obj, data = {})
      @data = data
      @object = obj

      decorate
      object
    end

    private

    def decorate
      [
        :position
      ].each { |attr| (value = send(attr)) && object.merge!(attr => value) }
    end

    def position
      @data[:position]
    end
  end
end
