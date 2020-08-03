# frozen_string_literal: true

module OnlyofficeRakeCodeLinter
  # Task with check files without newline
  class OnlyofficeRakeCodeLinter
    def self.file_without_trailing_newline
      all_files = Dir['./**/*.js']
      files_without_trailing_line = []
      all_files.each do |file|
        files_without_trailing_line << file unless IO.readlines(file)[-1].end_with?("\n")
      end
      raise("Files without newline at end: #{files_without_trailing_line}") unless files_without_trailing_line.empty?
    end
  end
end
