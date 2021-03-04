class PublicInjury < ApplicationRecord
  has_many :contract_plans, as: :plannable

  validates :liability, presence: true
  validates :daily, presence: true
  validates :total, presence: true
  validates :usa, presence: true
  validates :dangerous, presence: true
  validates :sub, presence: true
end
