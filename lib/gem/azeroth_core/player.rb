# frozen_string_literal: true

module AzerothCore
  class Player
    def account
      @account ||= Auth::Account.find_by(id: account_id)
    end
  end
end
