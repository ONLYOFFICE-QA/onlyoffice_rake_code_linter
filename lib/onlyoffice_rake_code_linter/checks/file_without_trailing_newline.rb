# frozen_string_literal: true

module OnlyofficeRakeCodeLinter
  # Task with check files without newline
  class OnlyofficeRakeCodeLinter
    # Fail if any file without newline at end
    # @param path [String] pattern to search file
    # @return [nil] if all good
    def self.file_without_trailing_newline(path = './**/*.js')
      all_files = Dir[path]
      files_without_trailing_line = []
      all_files.each do |file|
        files_without_trailing_line << file unless File.readlines(file)[-1].end_with?("\n")
      end
      raise("Files without newline at end: #{files_without_trailing_line}") unless files_without_trailing_line.empty?
    end
  end
end
