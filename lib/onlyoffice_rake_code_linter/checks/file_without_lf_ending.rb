# frozen_string_literal: true

module OnlyofficeRakeCodeLinter
  # Task with check line without lf ending
  class OnlyofficeRakeCodeLinter
    # Fail if any file lf ending of lines
    # @param path [String] pattern to search file
    # @return [nil] if all good
    def self.file_without_lf_ending(path = './**/*.js')
      all_files = Dir[path]
      files_without_ending = []
      all_files.each do |file|
        files_without_ending << file if File.read(file).include?("\r")
      end

      return if files_without_ending.empty?

      raise("Files without LF ending: #{files_without_ending}")
    end
  end
end
