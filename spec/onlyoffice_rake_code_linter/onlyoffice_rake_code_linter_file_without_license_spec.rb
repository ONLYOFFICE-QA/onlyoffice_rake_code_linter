# frozen_string_literal: true

RSpec.describe OnlyofficeRakeCodeLinter::OnlyofficeRakeCodeLinter, '.file_without_license' do
  it 'raise error on file without license' do
    expect { described_class.file_without_license("#{Dir.pwd}/spec/test_files/bad/file_without_license/*.js") }
      .to raise_error(/Files without license/)
  end

  it 'do not raise error on file with license' do
    described_class.file_without_license("#{Dir.pwd}/spec/test_files/good/file_without_license/*.js")
  end
end
