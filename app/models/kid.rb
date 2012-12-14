# == Schema Information
#
# Table name: kids
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  age        :integer
#  parent_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  health     :text
#  photo      :string(255)
#  youtube    :string(255)
#

class Kid < ActiveRecord::Base
  belongs_to :parent
  has_many :lists
end
