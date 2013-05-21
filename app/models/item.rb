class Item < ActiveRecord::Base
  attr_accessible :amount, :description, :event_id, :split_type
  belongs_to :event
  has_many :shares
end
