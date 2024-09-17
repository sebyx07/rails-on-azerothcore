# frozen_string_literal: true

module JsonResponse
  def json
    @json ||= JSON.parse(response.body).with_indifferent_access
  end
end

RSpec.configure do |config|
  config.include JsonResponse, type: :request
end
