class CreateTrackers < ActiveRecord::Migration[7.1]
  def change
    create_table :trackers do |t|
      t.string :user_id
      t.string :title
      t.integer :time
      t.timestamp :timestamp

      t.timestamps
    end
  end
end
