# frozen_string_literal: true

require 'sidekiq/testing'
Sidekiq::Testing.inline!

class ApplicationWorker
  def self.perform_async(*args)
    new.perform(*args)
  end

  def self.perform_in(_, *args)
    new.perform(*args)
  end
end

module InlineActiveJob
  def enqueue(*args)
    perform_now
  end

  def enqueue_at(*args)
    perform_now
  end
end
