# frozen_string_literal: true

module AzerothCore
  class ReloadCode
    class << self
      def reload!
        stop!

        Rails.application.reloader.reload!
        AzerothCore::Item.reload!
      end

      def stop!
        AzerothCore::PlayerScript.unregister_all_handlers
      end
    end
  end
end
