class CreateInsurancePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_policies do |t|
      t.integer :cost
      t.string :title

      t.timestamps
    end
  end
end
