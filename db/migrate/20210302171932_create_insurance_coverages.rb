class CreateInsuranceCoverages < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_coverages, if_not_exists: true do |t|
      t.integer :cost
      t.string :title
      
      t.timestamps
    end
  end
end
