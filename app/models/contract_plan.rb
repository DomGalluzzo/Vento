class ContractPlan < ApplicationRecord
  belongs_to :contract
  belongs_to :plannable, polymorphic: true
end
