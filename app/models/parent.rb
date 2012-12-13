# == Schema Information
#
# Table name: parents
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  city            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class Parent < ActiveRecord::Base
  attr_accessible :city, :email, :first_name, :last_name
  has_many :kids
  has_secure_password
end
