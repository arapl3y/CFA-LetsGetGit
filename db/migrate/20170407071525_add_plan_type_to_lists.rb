class AddPlanTypeToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :plan_type, :boolean
    remove_column :lists, :title
  end
end
