class RemoveHealthColumnFromKidsTable < ActiveRecord::Migration
  def change
    remove_column :kids, :health
    add_column :kids, :child_descript, :text
    add_column :kids, :illness, :string
  end
end
