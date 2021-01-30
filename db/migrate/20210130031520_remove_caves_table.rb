class RemoveCavesTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :caves
  end
end
