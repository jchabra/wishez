class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.integer :kid_id

      t.timestamps
    end
  end
end
