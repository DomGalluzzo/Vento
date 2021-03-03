class CreateFestivalPolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :festival_policies do |t|
      t.boolean :status
      t.references :festival, null: false, foreign_key: true
      t.references :insurance_policy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
