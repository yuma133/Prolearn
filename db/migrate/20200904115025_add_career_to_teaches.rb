class AddCareerToTeaches < ActiveRecord::Migration[5.2]
  def change
    add_column :teaches, :career, :string
  end
end
