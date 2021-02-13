class AddNameToCafes < ActiveRecord::Migration[6.0]
  def change
    add_column :cafes, :name, :string
  end
end
