class AddProspectIdColumnToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :prospect_id, :integer
  end
end
