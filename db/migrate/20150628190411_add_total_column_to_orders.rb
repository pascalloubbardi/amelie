class AddTotalColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total, :decimal, precision: 11, scale: 2
  end
end
