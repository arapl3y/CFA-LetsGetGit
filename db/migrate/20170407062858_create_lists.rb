class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.references :user, foreign_key: true
      t.boolean :admin
      t.string :title

      t.timestamps
    end
  end
end
