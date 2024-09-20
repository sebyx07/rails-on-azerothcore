# frozen_string_literal: true

require 'rails_helper'

RSpec.describe World::ItemTemplate, type: :model do
  describe 'factory' do
    it 'is valid' do
      expect(create(:item_template)).to be_valid
    end
  end
end
