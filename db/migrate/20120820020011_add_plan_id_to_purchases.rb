class AddPlanIdToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :plan_id, :integer
  end
end
