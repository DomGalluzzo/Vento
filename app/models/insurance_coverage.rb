class InsuranceCoverage < ApplicationRecord
  has_many :festival_policies
  has_many :questions
end
