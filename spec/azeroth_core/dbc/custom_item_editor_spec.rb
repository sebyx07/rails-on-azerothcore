# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AzerothCore::Dbc::CustomItemEditor do
  let(:input_dbc_path) { Rails.root.join('spec/resources/Item.dbc') }
  let(:copy) do
    "/tmp/#{SecureRandom.hex}-item.dbc".tap do |path|
      FileUtils.cp(input_dbc_path, path)
    end
  end

  let(:output_db_path) do
    "/tmp/#{SecureRandom.hex}-item-out.dbc"
  end

  let(:output_mpq_path) do
    "/tmp/#{SecureRandom.hex}-item.mpq"
  end

  after do
    FileUtils.rm_rf([copy, output_db_path, output_mpq_path])
  end

  subject do
    described_class.new(copy, output_db_path, output_mpq_path)
  end

  it 'can add items' do
    subject.add_item(
      id: 999,
      icon_file_data_id: 999,
      class_id: 2,
      subclass_id: 1,
      sound_override_subclass_id: 0,
      material: 1,
      inventory_type: 3,
      sheathe_type: 0,
      group_sound_id: 1
    )
    subject.save_changes

    expect(File.exist?(output_db_path)).to be_truthy
    expect(File.size(output_db_path)).to be > File.size(input_dbc_path)
    expect(File.exist?(output_mpq_path)).to be_truthy
  end
end
