# frozen_string_literal: true

# rubocop:disable Lint/MissingSuper
module Phlex
  module Heroicons
    class Base < Phlex::HTML

      register_element :path

      attr_reader :variant, :classes

      def initialize(variant: Phlex::Heroicons.configuration.default_variant, classes: Phlex::Heroicons.configuration.default_class)
        @variant = variant
        @classes = classes
      end

      def template
        send(variant) if respond_to?(variant)
      end
    end
  end
end
# rubocop:enable Lint/MissingSuper
