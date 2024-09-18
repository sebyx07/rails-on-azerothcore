# frozen_string_literal: true

module AzerothCore
  class PlayerScript
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
        event = method_name.to_s
        @event_handlers[event] ||= []

        # Create an instance of the class to bind the method to
        instance = self.new
        handler = instance.method(method_name)

        @event_handlers[event] << handler
        AzerothCore::PlayerScriptCPP.register_handler(event, handler)
      end

      def unregister_all_handlers
        @event_handlers.each do |event, handlers|
          handlers.each do |handler|
            AzerothCore::PlayerScriptCPP.unregister_handler(event, handler)
          end
        end
        @event_handlers.clear
      end
    end
  end
end