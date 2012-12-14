# == Schema Information
#
# Table name: purchases
#
#  id            :integer          not null, primary key
#  item_id       :integer
#  benefactor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Purchase < ActiveRecord::Base
  belongs_to :benefactor
end
