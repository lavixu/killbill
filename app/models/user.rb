class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :balance_creditors, :class_name => 'Balance', :foreign_key => 'creditor_id'
  has_many :balance_debtors, :class_name => 'Balance', :foreign_key => 'debtor_id'
  has_many :transaction_log_creditors, :class_name => 'TransactionLog', :foreign_key => 'creditor_id'
  has_many :transaction_log_debtors, :class_name => 'TransactionLog', :foreign_key => 'debtor_id'
  has_many :friend1, :class_name => 'Friend', :foreign_key => 'user1_id'
  has_many :friend2, :class_name => 'Friend', :foreign_key => 'user2_id'
  
  # attr_accessible :title, :body
end
