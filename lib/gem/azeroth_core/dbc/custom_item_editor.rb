# frozen_string_literal: true

module AzerothCore
  module Dbc
    class CustomItemEditor
      attr_reader :items_manager

      def initialize(input_dbc_path:, output_dbc_path:, output_mpq_path:)
        @input_dbc_path = input_dbc_path
        @output_dbc_path = output_dbc_path
        @output_mpq_path = output_mpq_path
        load_dbcs
      end

      def load_dbcs
        puts 'Loading Item.dbc'
        @items_manager = DbcItemsManager.new(File.join(@input_dbc_path, 'Item.dbc'))
      end

      def add_record(item_data)
        @items_manager.create_record_with_values(item_data)
      end

      def modify_record(id, new_data)
        @items_manager.update_record_multi(id, new_data)
        puts "Updated Item with id: #{id}"
      end

      def remove_record(id)
        record_index = @items_manager.find_by(:id, id).first
        if record_index
          @items_manager.delete_record(record_index)
          puts "Removed Item with id: #{id}"
        else
          puts "Item with id: #{id} not found"
        end
      end

      def save_changes
        puts 'Saving changes to Item.dbc'.colorize(:green)
        @items_manager.write_to(File.join(@output_dbc_path, 'Item.dbc'))
        create_mpq
      end

      private
        def create_mpq
          FileUtils.rm_rf(@output_mpq_path)
          puts "Saving MPQ to #{@output_mpq_path}"
          builder = AzerothCore::Mpq::Builder.new(@output_mpq_path)
          builder.add_file(File.join(@output_dbc_path, 'Item.dbc'), 'DBFilesClient/Item.dbc')
          builder.build
        end
    end
  end
end