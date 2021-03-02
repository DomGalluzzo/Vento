class InsuranceCoverage < ApplicationRecord
  has_many :festival_policies
  has_many :questions

  validates :cost, presence: true
  validates :title, presence: true
end
