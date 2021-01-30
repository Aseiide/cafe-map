class AddMemoUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :memo, :string
  end
end
