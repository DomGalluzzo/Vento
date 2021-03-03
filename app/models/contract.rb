class Contract < ApplicationRecord
  belongs_to :festival
  has_many :contract_plans

  validate :total_cost, presence: true
end
