class DropContractplansTable < ActiveRecord::Migration[6.0]
  def change
    drop_table(:contractplans, if_exists: true)
  end
end
