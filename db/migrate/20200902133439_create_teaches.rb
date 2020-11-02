class CreateTeaches < ActiveRecord::Migration[5.2]
  def change
    create_table :teaches do |t|
      t.string :lang
      t.string :level
      t.integer :user_id

      t.timestamps
    end
  end
end
