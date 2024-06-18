class RenameUsersAndEventsTable < ActiveRecord::Migration[7.1]
  def change
    rename_table :events_and_users, :events_users
  end
end
