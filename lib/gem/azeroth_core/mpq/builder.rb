module AzerothCore
  module Mpq
    class Builder
      def initialize(output_path)
        @output_path = output_path
        @temp_dir = Dir.mktmpdir
        @files = []
      end

      def add_file(source_path, archive_path)
        destination_path = File.join(@temp_dir, archive_path)
        FileUtils.mkdir_p(File.dirname(destination_path))
        FileUtils.cp(source_path, destination_path)
        @files << archive_path
      end

      def build
        begin
          command = ["mpqtool", "new", @temp_dir, @output_path]
          result = system(*command)

          if result && File.exist?(@output_path)
            puts "MPQ archive created successfully at #{@output_path}"
          else
            puts "Failed to create MPQ archive"
          end
        ensure
          FileUtils.remove_entry(@temp_dir)
        end
      end

      private

      def system(*args)
        puts "Executing: #{args.join(' ')}"
        Kernel.system(*args)
      end
    end
  end
end
