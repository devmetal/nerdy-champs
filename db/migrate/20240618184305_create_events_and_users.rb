class CreateEventsAndUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :events_and_users, id: false do |t|
      t.belongs_to :user
      t.belongs_to :event
    end
  end
end
