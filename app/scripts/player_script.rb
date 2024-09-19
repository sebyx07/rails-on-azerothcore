# frozen_string_literal: true

class PlayerScript < AzerothCore::PlayerScript
  # This method is called when a player logs in
  def on_login
    account_id = current_player.account_id

    puts "#{current_player.name} - #{account_id}! has logged in!"
    current_player.send_message('Welcome to the server!')
    current_player.level = 33
  end

  # This method is called when a player logs out
  def on_logout
    puts "#{current_player.name} has logged out!"
  end

  def on_chat
    puts current_player.account.inspect
    puts "#{current_player.name} says now: #{params[:msg]}"
  end

  private
    def current_player
      @current_player ||= params[:player]
    end
end
