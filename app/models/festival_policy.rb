class FestivalPolicy < ApplicationRecord
  belongs_to :festival
  belongs_to :insurance_policy
end
