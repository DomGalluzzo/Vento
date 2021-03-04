class Contract < ApplicationRecord
  belongs_to :festival
  has_many :contract_plans

  validates :total_cost, presence: true
end
