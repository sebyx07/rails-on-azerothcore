# frozen_string_literal: true

seed_files = Dir[Rails.root.join('db', 'seeds', '*.rb')]
ApplicationRecord.transaction do
  seed_files.sort.each do |file|
    puts "Loading seed file: seeds/#{file.split("/").last}"
    load file
  end
end

dev_seed_files = Dir[Rails.root.join('db', 'dev_seeds', '*.rb')]
ApplicationRecord.transaction do
  # require 'sidekiq/testing'
  # Sidekiq::Testing.inline!
  dev_seed_files.sort.each do |file|
    puts "Loading seed file: dev_seeds/#{file.split("/").last}"
    load file
  end
end if Rails.env.development?
