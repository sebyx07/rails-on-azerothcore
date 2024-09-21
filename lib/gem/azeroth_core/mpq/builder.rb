module AzerothCore
  module Mpq
    class Builder
      def initialize(output_path)
        @output_path = output_path
        @files = []
      end

      def add_file(source_path, archive_path)
        @files << {
          source_path: source_path,
          archive_path: archive_path
        }
      end

      def build
        storm_lib = StormLib::Archive.new(@output_path, create: true)
        @files.each do |file|
          storm_lib.add_file(file[:source_path], file[:archive_path])
        end

        storm_lib.close
      end

      private

      def system(*args)
        puts "Executing: #{args.join(' ')}"
        Kernel.system(*args)
      end
    end
  end
end
