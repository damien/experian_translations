require 'experian_translations/version'
require 'pathname'
require 'yaml'

# Mappings for field values found within Experian credit report XML files
module ExperianTranslations
  DATA_ROOT = Pathname.new File.expand_path('../../data', __FILE__)

  def self.account_status_codes
    @account_purpose_type_codes ||= YAML.load_file(
      DATA_ROOT + 'account_status_codes.yml'
    )[:account_status_codes]
  end

  def self.account_purpose_type_codes
    @account_purpose_type_codes ||= YAML.load_file(
      DATA_ROOT + 'account_purpose_type_codes.yml'
    )[:account_type_codes]
  end

  # Mappings for risk models referenced within Experian credit reports
  module RiskModels
    DATA_ROOT = DATA_ROOT + 'risk_models'

    def self.vantage_score_v3
      @account_purpose_type_codes ||= YAML.load_file(
        DATA_ROOT + 'vantage_score-3_0.yml'
      )[:risk_model]
    end
  end
end
