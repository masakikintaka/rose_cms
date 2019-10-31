# frozen_string_literal: true

module RoseCms
  module Core
    module Service
      @@service_method_name = :call
      def self.included(base)
        base.send(:define_singleton_method, @@service_method_name.to_sym) do |*arg|
          begin
            return send(:new, *arg).send(@@service_method_name.to_sym)
          rescue Exception => e
            Rails.logger.error("#{self.class}: Exception raised: #{e}")
          end
          return nil
        end
      end
    end
  end
end
