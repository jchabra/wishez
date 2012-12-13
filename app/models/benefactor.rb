# == Schema Information
#
# Table name: benefactors
#
#  id              :integer          not null, primary key
#  first_name      :string(255)
#  last_name       :string(255)
#  username        :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class Benefactor < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :username
  has_secure_password
end
