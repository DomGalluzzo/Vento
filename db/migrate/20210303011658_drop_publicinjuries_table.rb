class DropPublicinjuriesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table(:publicinjuries, if_exists: true)
  end
end
