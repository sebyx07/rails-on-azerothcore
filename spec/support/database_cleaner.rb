# frozen_string_literal: true

RSpec.configure do |config|
  DATABASE_MODELS = {
    primary: ApplicationRecord,
    auth: AuthApplicationRecord,
    world: WorldApplicationRecord,
    characters: CharactersApplicationRecord
  }

  config.before(:suite) do
    DATABASE_MODELS.each do |db, model|
      database_name = model.connection.current_database
      abort("You are trying to run tests on the #{database_name} database for #{db}. Aborting!") unless database_name.include?('_test')

      tables = model.connection.tables - %w(ar_internal_metadata schema_migrations)
      next if tables.empty?

      tables.each do |table|
        count = model.connection.select_value("SELECT COUNT(*) FROM `#{table}`")
        if count.to_i > 0
          begin
            model.connection.execute('SET FOREIGN_KEY_CHECKS = 0;')
            model.connection.execute("TRUNCATE TABLE `#{table}`")
          ensure
            model.connection.execute('SET FOREIGN_KEY_CHECKS = 1;')
          end
        end
      end
    end

    DATABASE_MODELS.each do |db, _|
      DatabaseCleaner[:active_record, db:].strategy = :transaction
    end
  end

  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end
