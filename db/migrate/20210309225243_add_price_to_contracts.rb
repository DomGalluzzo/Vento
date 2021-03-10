class AddPriceToContracts < ActiveRecord::Migration[6.0]
  def change
    add_column :contracts, :price, :integer
  end
end
