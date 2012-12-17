# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  list_id     :integer
#  title       :string(255)
#  description :text
#  image       :string(255)
#  price       :decimal(, )
#  url         :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ActiveRecord::Base
  belongs_to :list
  mount_uploader :image, ImageUploader
end
