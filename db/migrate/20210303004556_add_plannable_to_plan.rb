class AddPlannableToPlan < ActiveRecord::Migration[6.0]
  def change
    add_reference :contract_plans, :plannable, polymorphic: true, null: false
  end
end
