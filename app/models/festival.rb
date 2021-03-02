class Festival < ApplicationRecord
  belongs_to :user
  has_many :festival_policies

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :festival_type, presence: true
  validates :name, presence: true
  validates :venue, presence: true

  # ? Validate longitude/latitude?
end
