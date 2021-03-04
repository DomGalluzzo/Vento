class PublicInjury < ApplicationRecord
  has_many :contract_plans, as: :plannable

  validates :liability, presence: true

  validates :daily, presence: true

  validates :total, presence: true

  validates :usa, exclusion: [nil]

  validates :dangerous, exclusion: [nil]

  validates :sub, exclusion: [nil]
end
