# == Schema Information
#
# Table name: kids
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  age        :integer
#  disease    :string(255)
#  parent_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Kid < ActiveRecord::Base
  attr_accessible :age, :disease, :first_name, :last_name, :parent_id
  belongs_to :parent
  has_many :lists
end
