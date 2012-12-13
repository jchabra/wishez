# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  kid_id     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class List < ActiveRecord::Base
  attr_accessible :kid_id, :title
  belongs_to :kid
  has_many :items
end
