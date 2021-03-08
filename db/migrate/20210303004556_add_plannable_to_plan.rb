class AddPlannableToPlan < ActiveRecord::Migration[6.0]
  def change
    add_reference :contract_plans, :plannable, polymorphic: true, index: true
  end
end
