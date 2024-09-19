# frozen_string_literal: true

module AzerothCore
  class Player
    def account
      @account ||= Auth::Account.find_by(id: account_id)
    end

    def character
      @character ||= Characters::Character.find_by(guid: character_id)
    end
  end
end
