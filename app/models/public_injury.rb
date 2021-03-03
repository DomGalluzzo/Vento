class PublicInjury < ApplicationRecord
  has_many :contract_plans, as: :plannable
end
