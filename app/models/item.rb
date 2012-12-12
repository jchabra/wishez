class Item < ActiveRecord::Base
  attr_accessible :description, :image, :list_id, :price, :title, :url
end
