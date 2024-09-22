# frozen_string_literal: true

module AzerothCore
  module Dbc
    class CustomItemEditor
      attr_reader :items_manager, :item_display_infos_manager

      def initialize(input_dbc_path:, output_dbc_path:, output_mpq_path:)
        @input_dbc_path = input_dbc_path
        @output_dbc_path = output_dbc_path
        @output_mpq_path = output_mpq_path
        load_dbcs
      end

      def load_dbcs
        puts 'Loading Item.dbc'
        @items_manager = DbcItemsManager.new(File.join(@input_dbc_path, 'Item.dbc'))
        puts 'Loading ItemDisplayInfo.dbc'
        @item_display_infos_manager = DbcItemDisplayInfosManager.new(File.join(@input_dbc_path, 'ItemDisplayInfo.dbc'))
      end

      def add_record(item_data, display_data = nil)
        item_index = @items_manager.create_record_with_values(item_data)
        puts "Created new item at index: #{item_index}"

        if display_data.nil?
          existing_display_info = @item_display_infos_manager.find_by(:id, item_data[:display_id]).first
          if existing_display_info
            new_display_data = existing_display_info.to_h
            new_display_data[:id] = item_data[:item_id]
            # display_index = @item_display_infos_manager.create_record_with_values(new_display_data)
            # puts "Created new ItemDisplayInfo at index: #{display_index}"
          else
            raise ArgumentError, "No existing ItemDisplayInfo found for id: #{item_data[:display_id]}"
          end
        else
          display_index = @item_display_infos_manager.create_record_with_values(display_data)
          puts "Created new ItemDisplayInfo at index: #{display_index}"
        end
      end

      def modify_record(id, new_data, is_item = true)
        manager = is_item ? @items_manager : @item_display_infos_manager
        manager.update_record_multi(id, new_data)
        puts "Updated #{is_item ? 'Item' : 'ItemDisplayInfo'} with id: #{id}"
      end

      def remove_record(id, is_item = true)
        manager = is_item ? @items_manager : @item_display_infos_manager
        record_index = manager.find_by(:id, id).first
        if record_index
          manager.delete_record(record_index)
          puts "Removed #{is_item ? 'Item' : 'ItemDisplayInfo'} with id: #{id}"
        else
          puts "#{is_item ? 'Item' : 'ItemDisplayInfo'} with id: #{id} not found"
        end
      end

      def save_changes
        puts 'Saving changes to Item.dbc'.colorize(:green)
        @items_manager.write_to(File.join(@output_dbc_path, 'Item.dbc'))
        puts 'Saving changes to ItemDisplayInfo.dbc'.colorize(:green)
        @item_display_infos_manager.write_to(File.join(@output_dbc_path, 'ItemDisplayInfo.dbc'))
        create_mpq
      end

      private
        def create_mpq
          FileUtils.rm_rf(@output_mpq_path)
          puts "Saving MPQ to #{@output_mpq_path}"
          builder = AzerothCore::Mpq::Builder.new(@output_mpq_path)
          builder.add_file(File.join(@output_dbc_path, 'Item.dbc'), 'DBFilesClient/Item.dbc')
          builder.add_file(File.join(@output_dbc_path, 'ItemDisplayInfo.dbc'), 'DBFilesClient/ItemDisplayInfo.dbc')
          builder.build
        end
    end
  end
end
