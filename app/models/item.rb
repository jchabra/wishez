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
  attr_accessible :description, :image, :list_id, :price, :title, :url
  belongs_to :list
end
