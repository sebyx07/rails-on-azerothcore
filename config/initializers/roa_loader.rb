# frozen_string_literal: true

roa_so_path = '/azerothcore/build/bin/modules/mod_ruby.so'

Rails.application.config.before_initialize do
  next if ENV['ENV_WOW']
  if File.exist?(roa_so_path)
    puts 'Loading ROA in Rails'
    require roa_so_path
  else
    puts 'ROA not found'
  end
end

unless Rails.application.config.eager_load
  Rails.application.config.to_prepare do
    Rails.autoloaders.main.eager_load_dir("#{Rails.root}/app/wow")
  end
end


Rails.application.config.after_initialize do
  next if Rails.env.test?
  next unless World::ItemTemplate.table_exists?
  AzerothCore::Item.descendants.each do |subclass|
    AzerothCore::Item::ImportItem.new(subclass).import
  end
rescue ActiveRecord::NoDatabaseError
  # Ignore
end
