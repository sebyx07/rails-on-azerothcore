# frozen_string_literal: true

roa_so_path = '/azerothcore/build/bin/modules/mod_ruby.so'

if defined?(AzerothCore::Player)
  return true
elsif File.exist?(roa_so_path)
  puts 'Loading ROA in rails'
  require roa_so_path
else
  puts 'ROA not found'
end
