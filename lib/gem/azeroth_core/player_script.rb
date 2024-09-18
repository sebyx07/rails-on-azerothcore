# frozen_string_literal: true

module AzerothCore
  class PlayerScript
    class << self
      def inherited(subclass)
        subclass.instance_variable_set(:@event_handlers, {})
        subclass.extend(ClassMethods)
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
        puts "Registered handler for #{event}"
        AzerothCore::PlayerScriptCPP.register_handler(event, handler)
      end
    end
  end
end
