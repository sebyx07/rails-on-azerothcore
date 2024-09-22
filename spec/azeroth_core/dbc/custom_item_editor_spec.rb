# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AzerothCore::Dbc::CustomItemEditor do
  let(:input_dbc_path) { Rails.root.join('spec/resources') }

  let(:output_dbc_path) do
    "/tmp/dbc-#{SecureRandom.hex}".tap do |path|
      FileUtils.mkdir_p(path)
    end
  end

  let(:output_mpq_path) do
    "/tmp/#{SecureRandom.hex}-item.mpq"
  end

  after do
    FileUtils.rm_rf([output_dbc_path, output_mpq_path])
  end

  subject do
    described_class.new(input_dbc_path:, output_dbc_path:, output_mpq_path:)
  end

  describe '#add_record' do
    let(:item_record) do
      AzerothCore::Dbc::CustomItemEditor::ItemRecord.new(
        id: 99999999,
        icon_file_data_id: 999,
        class_id: 2,
        subclass_id: 1,
        sound_override_subclass_id: 0,
        material: 1,
        inventory_type: 3,
        sheathe_type: 0,
        group_sound_id: 1
      )
    end

    let(:display_record) do
      AzerothCore::Dbc::CustomItemEditor::ItemDisplayInfoRecord.new(
        id: 99999999,
        model_resource_id_1: 1000,
        model_resource_id_2: 1001,
        icon_file_data_id: 999,
        texture_item_id_1: 0,
        texture_item_id_2: 0,
        geoset_group_1: 0,
        geoset_group_2: 0,
        geoset_group_3: 0,
        flags: 0,
        spell_visual_id: 0,
        group_sound_index: 0,
        helm_geoset_vis_id_1: 0,
        helm_geoset_vis_id_2: 0,
        texture_1: 0,
        texture_2: 0,
        item_visual: 0
      )
    end

    it 'can add items and item display info' do
      expect { subject.add_record(item_record, display_record) }.not_to raise_error

      subject.save_changes

      expect(File.exist?(output_mpq_path)).to be_truthy
      expect(File.exist?(File.join(output_dbc_path, 'Item.dbc'))).to be_truthy
      expect(File.exist?(File.join(output_dbc_path, 'ItemDisplayInfo.dbc'))).to be_truthy

      expect(File.size(File.join(output_dbc_path, 'Item.dbc'))).to be > File.size(File.join(input_dbc_path, 'Item.dbc'))
      # expect(File.size(File.join(output_dbc_path, 'ItemDisplayInfo.dbc'))).to be > File.size(File.join(input_dbc_path, 'ItemDisplayInfo.dbc'))
    end

    it 'raises an error for invalid record types' do
      expect { subject.add_record('Not an ItemRecord', display_record) }.to raise_error(ArgumentError, /Unknown record type/)
      expect { subject.add_record(item_record, 'Not an ItemDisplayInfoRecord') }.to raise_error(ArgumentError, /Unknown record type/)
    end
  end
end
