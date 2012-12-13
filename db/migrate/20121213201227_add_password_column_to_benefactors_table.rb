class AddPasswordColumnToBenefactorsTable < ActiveRecord::Migration
  def change
    add_column :benefactors, :password_digest, :string
  end
end
