# frozen_string_literal: true

RSpec.describe OnlyofficeRakeCodeLinter::OnlyofficeRakeCodeLinter, '.file_without_trailing_newline' do
  it 'raise error on file without newline' do
    expect { described_class.file_without_trailing_newline("#{Dir.pwd}/spec/test_files/bad/file_without_newline/*.js") }
      .to raise_error(/Files without newline at end/)
  end

  it 'do not raise error on file with newline' do
    described_class.file_without_trailing_newline("#{Dir.pwd}/spec/test_files/good/file_with_newline/*.js")
  end
end
