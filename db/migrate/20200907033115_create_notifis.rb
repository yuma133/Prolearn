class CreateNotifis < ActiveRecord::Migration[5.2]
  def change
    create_table :notifis do |t|
      t.integer :visitor_id, null: false
      t.integer :visited_id, null: false
      t.integer :message_id
      t.integer :room_id
      t.string :action, default: '', null: false
      t.boolean :checked, default: false, null: false

      t.timestamps
    end
  end
end
