class Contract < ApplicationRecord
  belongs_to :festival
  has_many :contract_plans
  has_many :cancellations, through: :contract_plans, source: :plannable, source_type: 'Cancellation'
  has_many :public_injuries, through: :contract_plans, source: :plannable, source_type: 'PublicInjury'
end
