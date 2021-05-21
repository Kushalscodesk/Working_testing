class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :recipient_id
      t.integer :actor_id
      t.datetime :read_at

      t.timestamps
    end
  end
end
