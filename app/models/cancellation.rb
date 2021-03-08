class Cancellation < ApplicationRecord
  has_many :contract_plans, as: :plannable
  accepts_nested_attributes_for :contract_plans

  # validates :budget, presence: true

  # validates :terrorism, exclusion: [nil]

  # validates :location, exclusion: [nil]

  # validates :rain, exclusion: [nil]

  # validates :flood, exclusion: [nil]

  # validates :loss, exclusion: [nil]

  # validates :weather, exclusion: [nil]
end
