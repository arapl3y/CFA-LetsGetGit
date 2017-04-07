class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.boolean :admin
      t.boolean :check_list
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
