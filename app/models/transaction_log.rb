class TransactionLog < ActiveRecord::Base
  attr_accessible :amount_to_settle, :event_id, :creditor_id, :debtor_id
end
