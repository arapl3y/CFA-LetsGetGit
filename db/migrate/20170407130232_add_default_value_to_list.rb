class AddDefaultValueToList < ActiveRecord::Migration[5.0]
  def up
    change_column :plans, :completion, :boolean, :default => false
  end

  def down
    change_column :plans, :completion, :boolean, :default => nil
  end
end
