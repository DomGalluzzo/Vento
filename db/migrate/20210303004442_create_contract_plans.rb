class CreateContractPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :contract_plans do |t|
      t.references :contract, null: false, foreign_key: true

      t.timestamps
    end
  end
end
