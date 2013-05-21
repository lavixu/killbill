class Balance < ActiveRecord::Base
  attr_accessible :owed_amount, :creditor_id, :debtor_id
  belongs_to :creditor, :class => 'User'
  belongs_to :debtor, :class => 'User'
end
