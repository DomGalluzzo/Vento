class CreateInsuranceCoverages < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_coverages do |t|

      t.timestamps
    end
  end
end
