class ChangeNickToUniqueInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column_null :users, :nick, false
    add_index :users, [:nick], unique: true
  end
end
