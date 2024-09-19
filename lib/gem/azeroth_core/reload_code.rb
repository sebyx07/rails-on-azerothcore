# frozen_string_literal: true

module AzerothCore
  class ReloadCode
    class << self
      def reload!
        stop!

        Rails.application.reloader.reload!
      end

      def stop!
        AzerothCore::PlayerScript.unregister_all_handlers
      end
    end
  end
end