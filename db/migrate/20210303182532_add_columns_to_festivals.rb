class AddColumnsToFestivals < ActiveRecord::Migration[6.0]
  def change
    add_column :festivals, :genre, :string
    add_column :festivals, :name, :string
    add_column :festivals, :venue, :string
  end
end
