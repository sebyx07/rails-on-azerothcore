# Rails on Azeroth Core (WIP)
### Ruby VM and Rails loaded into the AzerothCore and vice versa


## Examples

custom scripts:
```ruby
# app/wow/scripts/my_player_script.rb
# frozen_string_literal: true

module Scripts
  class MyPlayerScript < AzerothCore::PlayerScript
    # This method is called when a player logs in
    def on_login
      account_id = current_player.account_id

      puts current_player.character_id

      puts "#{current_player.name} - #{account_id}! has logged in!"
      current_player.send_message('Welcome to the server!')

      puts "items: #{current_character.items.map(&:name)}"
      current_player.level = 33
    end

    # This method is called when a player logs out
    def on_logout
      puts "#{current_player.name} has logged out!"
    end

    def on_chat
      # puts "account: #{current_player.account.inspect}"
      # puts "character: #{current_player.character.inspect}"
      puts "#{current_player.name} says now: #{params[:msg]}"
      puts "class: #{current_character.attributes}"
      puts "level: #{current_character.level}"
    end

    private
      def current_player
        @current_player ||= params[:player]
      end

      def current_character
        @current_character ||= current_player.character
      end
  end
end
```

custom items:
```ruby
# app/wow/items/my_item.rb

module Items
  class MySword < ApplicationItem
    def self.build
      World::ItemTemplate.find_by!(entry: 32837, name: 'Warglaive of Azzinoth').tap do |sword|
        sword.entry = item_id
        sword.name = 'My Sword 1'
      end
    end

    def self.item_id
      BASE_ITEM_ID + 1
    end

    def on_quest_accept
      puts params[:player].name + ' accepted the quest'
    end
  end
end
```

Run: 
```bash
bin/setup
bin/dev
```
Start wow, set realmlist to 127.0.0.1

```bash
bin/console
 > account create admin admin
 > account set gmlevel admin 3 1
```

Finish setup
```bash
bin/rails db:setup
```

run specs
```bash
bin/rspec
```