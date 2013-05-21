class CreateTransactionLogs < ActiveRecord::Migration
  def change
    create_table :transaction_logs do |t|
      t.integer :creditor_id, :limit => 8, :null => false
      t.integer :debtor_id, :limit => 8, :null => false
      t.integer :event_id, :limit => 8, :null => false
      t.decimal :amount_to_settle

      t.timestamps
    end
  end
end
