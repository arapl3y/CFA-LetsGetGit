class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.references :list, foreign_key: true
      t.boolean :completion, :default => false 

      t.timestamps
    end
  end
end
