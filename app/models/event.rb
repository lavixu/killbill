class Event < ActiveRecord::Base
  attr_accessible  :description, :event_type, :occurence_date, :total_amount
  has_many :items
  has_many :payers
  has_one :loan
end
