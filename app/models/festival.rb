class Festival < ApplicationRecord
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :genre, presence: true
  validates :name, presence: true
  validates :venue, presence: true
end
