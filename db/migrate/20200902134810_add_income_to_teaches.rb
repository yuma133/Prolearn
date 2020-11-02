class AddIncomeToTeaches < ActiveRecord::Migration[5.2]
  def change
    add_column :teaches, :income, :string
  end
end
