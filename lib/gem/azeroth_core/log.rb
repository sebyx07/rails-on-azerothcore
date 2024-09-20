# frozen_string_literal: true

module AzerothCore
  class Log
    BASE_MESSAGE = 'AzerothCore: '.colorize(:yellow)
    class << self
      def info(message)
        puts(BASE_MESSAGE + message.colorize(:blue))
      end

      def standard(message)
        puts(BASE_MESSAGE + message)
      end
    end
  end
end
