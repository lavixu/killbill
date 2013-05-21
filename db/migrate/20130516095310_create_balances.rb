class CreateBalances < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.integer :creditor_id, :limit => 8, :null => false
      t.integer :debtor_id, :limit =>8, :null => false
      t.decimal :owed_amount

      t.timestamps
    end
  end
end
