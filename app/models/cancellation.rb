class Cancellation < ApplicationRecord
  has_many :contract_plans, as: :plannable

  validates :budget, presence: true
  validates :terrorism, presence: true
  validates :location, presence: true
  validates :rain, presence: true
  validates :flood, presence: true
  validates :loss, presence: true
  validates :weather, presence: true
end
