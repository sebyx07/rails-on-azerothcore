# frozen_string_literal: true

module AzerothCore
  class PlayerScript
    attr_accessor :params

    def initialize(params={})
      @params = params
    end

    class << self
      def inherited(subclass)
        subclass.instance_variable_set(:@event_handlers, {})
        subclass.extend(ClassMethods)
        (@subclasses ||= []) << subclass
      end

      def unregister_all_handlers
        @subclasses&.each do |subclass|
          subclass.unregister_all_handlers
        end
      end
    end

    module ClassMethods
      def method_added(method_name)
        return unless method_name.to_s.start_with?('on_')
        return unless public_method_defined?(method_name)

        event = method_name.to_s
        handler = -> (params) do
          instance = self.new(params)


          instance.send(event)
        end

        @event_handlers[event] = handler
        AzerothCore::PlayerScriptCPP.register_handler(event, handler)
      end

      def unregister_all_handlers
        @event_handlers.each do |event, handler|
          AzerothCore::PlayerScriptCPP.unregister_handler(event, handler)
        end
        @event_handlers.clear
      end
    end
  end
end