class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :list_id
      t.string :title
      t.text :description
      t.string :image
      t.decimal :price
      t.string :url

      t.timestamps
    end
  end
end
