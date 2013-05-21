class Payer < ActiveRecord::Base
  attr_accessible :event_id, :paid_amount, :user_id
  belongs_to :event
  belongs_to :user
end
