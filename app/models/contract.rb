class Contract < ApplicationRecord
  belongs_to :festival
  has_many :contract_plans
  has_many :cancellations, through: :contract_plans, source: :plannable, source_type: 'Cancellation'
  has_many :public_injuries, through: :contract_plans, source: :plannable, source_type: 'PublicInjury'
  monetize :price_cents
  
  def price_sum
    total = 0
    self.contract_plans.each do |p|
      total += p.plannable.price
    end
    self.price = total
    self.save
  end
end
