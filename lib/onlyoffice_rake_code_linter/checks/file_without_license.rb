# frozen_string_literal: true

module OnlyofficeRakeCodeLinter
  # Task with check file without license
  class OnlyofficeRakeCodeLinter
    def self.file_without_license
      license_header = 'Copyright Ascensio System'
      all_js_files = Dir['./**/*.js']
      files_without_license = []
      all_js_files.each do |file|
        next if excluded_source_paths.any? { |exclude| file.include?(exclude) }

        files_without_license << file unless File.read(file).include?(license_header)
      end
      raise("Files without license: #{files_without_license}") unless files_without_license.empty?
    end
  end
end
