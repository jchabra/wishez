class RemoveDiseaseColumnFromKidsTable < ActiveRecord::Migration
  def change
    remove_column :kids, :disease
  end
end
