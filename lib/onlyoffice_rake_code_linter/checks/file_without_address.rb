# frozen_string_literal: true

# Task with check latvian address
module OnlyofficeRakeCodeLinter
  def file_without_address
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
