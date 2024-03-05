# frozen_string_literal: true

module ActiveRecord
  class Base
    def self.primary_abstract_class
      # not implemented
    end

    def self.find(id)
      self
    end

    def initialize(attributes = {})
      @attributes = attributes
    end

    def id
      @attributes[:id]
    end

    def title
      @attributes[:title]
    end
  end
end
