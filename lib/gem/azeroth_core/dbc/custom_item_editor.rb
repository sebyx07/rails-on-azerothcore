# frozen_string_literal: true

module AzerothCore
  module Dbc
    class CustomItemEditor
      DBC_HEADER_SIZE = 20

      attr_reader :items

      def initialize(input_dbc_path, output_dbc_path, output_mpq_path)
        @input_dbc_path = input_dbc_path
        @output_dbc_path = output_dbc_path
        @output_mpq_path = output_mpq_path
        @items = []
        @string_block = ''
        load_dbc
      end

      def load_dbc
        dbc_data = File.binread(@input_dbc_path)
        parse_dbc(dbc_data)
      end

      def parse_dbc(dbc_data)
        header = dbc_data[0, DBC_HEADER_SIZE]
        @record_count, @field_count, @record_size, @string_block_size = header[4, 16].unpack('V4')

        @items = []
        @record_count.times do |i|
          offset = DBC_HEADER_SIZE + (i * @record_size)
          record_data = dbc_data[offset, @record_size]
          @items << record_data
        end

        string_block_offset = DBC_HEADER_SIZE + (@record_count * @record_size)
        @string_block = dbc_data[string_block_offset..-1]
      end

      def add_item(item_data)
        new_item = ItemRecord.new(item_data).to_binary_s
        @items << new_item
      end

      def add_record(record)
        @items << record
      end

      def modify_item(id, new_data)
        index = @items.index { |item| ItemRecord.read(item).id == id }
        if index
          item = ItemRecord.read(@items[index])
          new_data.each { |key, value| item.send("#{key}=", value) }
          @items[index] = item.to_binary_s
        end
      end

      def remove_item(id)
        @items.delete_if { |item| ItemRecord.read(item).id == id }
      end

      def save_changes
        puts "Writing Items.dbc to #{@output_dbc_path}"
        File.open(@output_dbc_path, 'wb') do |file|
          write_header(file)
          write_records(file)
          write_string_block(file)
        end
        create_mpq if @output_mpq_path
      end

      private
        def write_header(file)
          file.write(['WDBC', @items.size, @field_count, @record_size, @string_block.size].pack('A4V4'))
        end

        def write_records(file)
          @items.each do |item|
            file.write(item)
          end
        end

        def write_string_block(file)
          file.write(@string_block)
        end

        def create_mpq
          FileUtils.rm_rf(@output_mpq_path)
          puts "Saving MPQ to #{@output_mpq_path}"
          builder = AzerothCore::Mpq::Builder.new(@output_mpq_path)
          builder.add_file(@output_dbc_path, 'DBFilesClient/Item.dbc')
          builder.build
        end
    end
  end
end
