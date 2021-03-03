class Contract < ApplicationRecord
  belongs_to :festival
  has_many :contract_plans
end
