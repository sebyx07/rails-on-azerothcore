# frozen_string_literal: true

Rake::Task['db:setup'].clear
Rake::Task['db:setup'].reenable

namespace :db do
  desc 'Setup the database'
  task setup: :environment do
    # puts 'Setting up the database...'
    Rake::Task['db:create'].invoke
    # Rake::Task['db:schema:load'].invoke
  end

  desc 'Seed the database'
  task seed: :environment do
    load Rails.root.join('db', 'seeds.rb')
  end
end
