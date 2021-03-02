class UpdateInsurancePoliciesTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :insurance_policies, :insurance_coverages
  end
end
