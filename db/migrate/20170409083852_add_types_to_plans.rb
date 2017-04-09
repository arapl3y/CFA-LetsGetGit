class AddTypesToPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :hours, :string
  end
end
