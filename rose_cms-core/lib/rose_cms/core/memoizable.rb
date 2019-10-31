# frozen_string_literal: true

module RoseCms
  module Core
    module Memoizable
      def memoize(name, cache = {})
        original = "__unmemoized_#{name}__"

        ([Class, Module].include?(self.class) ? self : self.class).class_eval do
          alias_method original, name
          private original
          define_method(name) { |*args| cache[args] ||= send(original, *args) }
        end
      end
    end
end
end
