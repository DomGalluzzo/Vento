class Festival < ApplicationRecord
  belongs_to :user
  has_many :festival_policies
end
