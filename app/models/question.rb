class Question < ApplicationRecord
  belongs_to :insurance_coverage
  has_many :user_answers

  validates :content, presence: true
  validates :type, presence: true
end
