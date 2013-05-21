class CreatePayers < ActiveRecord::Migration
  def change
    create_table :payers do |t|
      t.integer :event_id, :limit => 8, :null => false
      t.integer :user_id, :limit => 8, :null => false
      t.decimal :paid_amount, :default => 0.0
      t.timestamps
    end
  end
end
