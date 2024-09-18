# frozen_string_literal: true

module AzerothCore
  class ReloadCode
    class << self
      def reload!
        AzerothCore::PlayerScript.unregister_all_handlers

        Rails.application.reloader.reload!
      end
    end
  end
end