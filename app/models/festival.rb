class Festival < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :genre, presence: true
  validates :name, presence: true
  validates :venue, presence: true
  validates :address, presence: true
end
