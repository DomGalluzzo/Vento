class ChangePriceType < ActiveRecord::Migration[6.0]
  def change
    remove_columns :contracts, :price
  end
end
