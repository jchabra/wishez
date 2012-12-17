# == Schema Information
#
# Table name: kids
#
#  id             :integer          not null, primary key
#  first_name     :string(255)
#  last_name      :string(255)
#  age            :integer
#  parent_id      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  photo          :string(255)
#  youtube        :string(255)
#  child_descript :text
#  illness        :string(255)
#

class Kid < ActiveRecord::Base
  belongs_to :parent
  has_many :lists
  mount_uploader :photo, ImageUploader
end
