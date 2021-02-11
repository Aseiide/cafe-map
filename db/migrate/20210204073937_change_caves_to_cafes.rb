class ChangeCavesToCafes < ActiveRecord::Migration[6.0]
  def change
    # テーブル名を変更する記述
    rename_table :caves, :cafes
  end
end
