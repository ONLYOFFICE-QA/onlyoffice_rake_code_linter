# frozen_string_literal: true

module OnlyofficeRakeCodeLinter
  # Task with check latvian address
  class OnlyofficeRakeCodeLinter
    # Fail if any file without address
    # @param path [String] pattern to search file
    # @param exclude_paths [Array<String>] excluded patterns
    # @return [nil] if all good
    def self.file_without_address(path: './**/*.js', exclude_paths: [])
      latvian_address = 'LV-1050'
      all_js_files = Dir[path]
      files_without_address = []
      all_js_files.each do |file|
        next if exclude_paths.any? { |exclude| file.include?(exclude) }

        files_without_address << file unless File.read(file).include?(latvian_address)
      end

      return if files_without_address.empty?

      raise("Files without latvian address `#{latvian_address}`: #{files_without_address}")
    end
  end
end
