class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.integer :total_cost
      t.references :festival, null: false, foreign_key: true

      t.timestamps
    end
  end
end
