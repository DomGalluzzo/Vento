class CreatePublicInjuries < ActiveRecord::Migration[6.0]
  def change
    create_table :public_injuries do |t|
      t.integer :liability
      t.integer :daily
      t.integer :total
      t.boolean :usa
      t.boolean :dangerous
      t.boolean :sub

      t.timestamps
    end
  end
end
