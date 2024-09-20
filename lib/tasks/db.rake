Rake::Task['db:setup'].clear
Rake::Task['db:seed'].clear

namespace :db do
  desc "Setup the database"
  task :setup => :environment do
    Rake::Task['db:create'].invoke
    Rake::Task['db:schema:load'].invoke
    # load Rails.root.join('db', 'seeds.rb')
  end

  desc "Seed the database"
  task :seed => :environment do
    load Rails.root.join('db', 'seeds.rb')
  end
end