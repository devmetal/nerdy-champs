class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :code
      t.string :description
      t.boolean :started
      t.string :location
      t.date :when

      t.timestamps
    end
  end
end
