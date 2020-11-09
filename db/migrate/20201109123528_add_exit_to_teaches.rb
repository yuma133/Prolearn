class AddExitToTeaches < ActiveRecord::Migration[5.2]
  def change
    add_column :teaches, :exit, :integer
  end
end
