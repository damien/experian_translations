require 'spec_helper'

describe ExperianTranslations::RiskModels do
  context '.vantage_score_v3' do
    it 'should return a hash' do
      expect(described_class.vantage_score_v3).to be_a(Hash)
    end
  end
end
