class Kid < ActiveRecord::Base
  attr_accessible :age, :disease, :first_name, :last_name, :parent_id
end