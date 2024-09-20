module AzerothCore
  class Log
    BASE_MESSAGE = "AzerothCore: ".colorize(:orange)
    class << self
      def info(message)
        BASE_MESSAGE + message.colorize(:blue)
      end

      def standard(message)
        BASE_MESSAGE + message
      end
    end
  end
end