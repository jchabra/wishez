class RemoveUsernameColumnFromBenefTable < ActiveRecord::Migration
  def change
    remove_column :benefactors, :username
  end
end
