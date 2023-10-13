# frozen_string_literal: true

RSpec.describe OnlyofficeRakeCodeLinter::OnlyofficeRakeCodeLinter, '.file_without_lf_ending' do
  it 'raise error on file without lf ending' do
    expect { described_class.file_without_lf_ending("#{Dir.pwd}/spec/test_files/bad/file_without_lf/*.js") }
      .to raise_error(/Files without LF ending/)
  end

  it 'do not raise error on file with lf ending' do
    expect { described_class.file_without_lf_ending("#{Dir.pwd}/spec/test_files/good/file_with_lf/*.js") }
      .not_to raise_error
  end
end
