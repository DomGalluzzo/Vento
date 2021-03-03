class FestivalPolicy < ApplicationRecord
  belongs_to :festival
  belongs_to :insurance_coverage

  validates :status, presence: true
end
