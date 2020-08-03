# frozen_string_literal: true

module OnlyofficeRakeCodeLinter
  # Task with check line without lf ending
  class OnlyofficeRakeCodeLinter
    def self.file_without_lf_ending
      latvian_address = 'LV-1050'
      all_js_files = Dir['./**/*.js']
      files_without_address = []
      all_js_files.each do |file|
        next if excluded_source_paths.any? { |exclude| file.include?(exclude) }

        files_without_address << file unless File.read(file).include?(latvian_address)
      end

      return if files_without_address.empty?

      raise("Files without latvian address `#{latvian_address}`: #{files_without_address}")
    end
  end
end
