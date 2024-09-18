# frozen_string_literal: true

module AzerothCoreStub
  class Player
    attr_reader :name
    attr_accessor :level
    attr_reader :account_id

    def initialize(name, level, account_id)
      @name = name
      @level = level
      @account_id = account_id
    end

    def increase_level!(amount = 1)
      @level += amount
    end
  end
end
