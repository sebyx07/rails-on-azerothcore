# frozen_string_literal: true

module Files
  class DirWatcher
    def initialize(*paths, interval: 1)
      @paths = paths
      @interval = interval
      @file_stats = {}
      @callback = nil
      @thread = nil
      @mutex = Mutex.new
      @changes_detected = false
      @first_run = true
    end

    def watch(&block)
      @callback = block
      @thread = Thread.new do
        loop do
          check_for_changes
          sleep @interval
        end
      end
      @thread.join
    end

    private
      def check_for_changes
        changes = false
        @paths.each do |path|
          scan_directory(path) do |file|
            next @file_stats.delete(file) unless File.exist?(file)
            current_stat = file_stat(file)
            if @file_stats[file] != current_stat
              @file_stats[file] = current_stat
              changes = true
            end
          end
        end

        if changes
          @mutex.synchronize do
            @changes_detected = true
          end

          trigger_callback
        end
      end

      def scan_directory(path)
        Dir.glob(File.join(path, '**', '*')).each do |file|
          yield(file) if File.file?(file)
        end
      end

      def file_stat(file)
        stat = File.stat(file)
        "#{stat.mtime.to_i}:#{stat.size}"
      end

      def trigger_callback
        @mutex.synchronize do
          if @changes_detected
            @callback.call if @callback && !@first_run
            @first_run = false
            @changes_detected = false
          end
        end
      end
  end
end
