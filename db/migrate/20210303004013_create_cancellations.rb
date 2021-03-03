class CreateCancellations < ActiveRecord::Migration[6.0]
  def change
    create_table :cancellations do |t|
      t.integer :budget
      t.boolean :terrorism
      t.string :location
      t.boolean :rain
      t.boolean :flood
      t.boolean :loss
      t.boolean :weather

      t.timestamps
    end
  end
end
