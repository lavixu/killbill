class Share < ActiveRecord::Base
  attr_accessible :amount, :item_id, :user_id
  belongs_to :item
end
