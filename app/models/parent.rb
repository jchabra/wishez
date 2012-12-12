class Parent < ActiveRecord::Base
  attr_accessible :city, :email, :first_name, :last_name
  has_many :kids
end
