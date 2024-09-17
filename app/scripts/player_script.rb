class PlayerScript < AzerothCore::PlayerScript
  # This method is called when the script is loaded
  def on_load
    puts "PlayerScript loaded!"
  end

  # This method is called when the script is unloaded
  def on_unload
    puts "PlayerScript unloaded!"
  end

  # This method is called when a player logs in
  def on_login(player, account_id)
    puts "#{player.name} - #{account_id} has logged in!"
    player.send_message("Welcome to the server!")
  end

  # This method is called when a player logs out
  def on_logout(player)
    puts "#{player.name} has logged out!"
  end

  # This method is called when a player sends a chat message
  def on_chat(player, message, type)
    puts "#{player.name} said: #{message}"
  end
end