# frozen_string_literal: true

return unless ENV['ENV_WOW']

Rails.application.config.after_initialize do
  Files::DirWatcher.new(Rails.root.join('app', 'scripts').to_s, interval: 2).watch do
    Rails.application.reloader.reload!
    puts 'Rails environment reloaded'
  end
end
