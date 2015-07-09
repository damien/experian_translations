require 'spec_helper'

describe ExperianTranslations do
  it 'has a version number' do
    expect(ExperianTranslations::VERSION).not_to be nil
  end

  context '.account_status_codes' do
    it 'should return a collection of account status codes' do
      expect(described_class.account_status_codes).to match(
        a_collection_including(
          a_hash_including(:code, :tty, :description)
        )
      )
    end
  end

  context '.account_purpose_type_codes' do
    it 'should return a collection of account type codes' do
      expect(described_class.account_purpose_type_codes).to match(
        a_collection_including(
          a_hash_including(:code, :tty, :description)
        )
      )
    end
  end
end
