class AddHealthColumnToKidsTable < ActiveRecord::Migration
  def change
    add_column :kids, :health, :text
  end
end
