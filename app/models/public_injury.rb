class PublicInjury < ApplicationRecord
  has_many :contract_plans, as: :plannable

  validates :liability, presence: true

  validates :daily, presence: true

  validates :total, presence: true

  validates :dangerous, exclusion: [nil]

  def price
    self.liability * 0.00001 + self.total * 0.1
  end

end
