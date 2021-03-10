class Order < ApplicationRecord
  belongs_to :user
  belongs_to :contract

  monetize :amount_cents
end
