# frozen_string_literal: true

RSpec.describe OnlyofficeRakeCodeLinter::OnlyofficeRakeCodeLinter, '.file_without_address' do
  it 'raise error on file without address' do
    expect { described_class.file_without_address(path: "#{Dir.pwd}/spec/test_files/bad/file_without_address/*.js") }
      .to raise_error(/Files without latvian address/)
  end

  it 'do not raise error on file with address' do
    described_class.file_without_address(path: "#{Dir.pwd}/spec/test_files/good/file_with_address/*.js")
  end
end
