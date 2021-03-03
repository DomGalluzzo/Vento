class ContractPlan < ApplicationRecord
  belongs_to :contract
  belongs_to :public_injury
  belongs_to :cancellation
end
