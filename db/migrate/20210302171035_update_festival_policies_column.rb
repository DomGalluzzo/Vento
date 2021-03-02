class UpdateFestivalPoliciesColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :festival_policies, :insurance_policy_id, :insurance_coverage_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
