class CreateFestivals < ActiveRecord::Migration[6.0]
  def change
    create_table :festivals do |t|
      t.date :start_date
      t.date :end_date
      t.float :latitude
      t.float :longitude
      t.string :festival_type
      t.string :name
      t.string :venue
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
