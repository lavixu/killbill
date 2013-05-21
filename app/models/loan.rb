class Loan < ActiveRecord::Base
  attr_accessible :event_id, :payer_user_id, :receiver_user_id
  belongs_to :event
end
