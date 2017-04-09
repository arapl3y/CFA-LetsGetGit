class AddStudyTypeToPlans < ActiveRecord::Migration[5.0]
  def change
    add_column :plans, :type_of_study, :string
  end
end
