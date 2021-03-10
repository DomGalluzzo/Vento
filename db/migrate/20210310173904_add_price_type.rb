class AddPriceType < ActiveRecord::Migration[6.0]
  def change
    add_monetize :contracts, :price, currency: { present: false }
  end
end
