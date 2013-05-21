class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :event_id, :limit => 8, :null => false
      t.integer :receiver_user_id, :limit => 8, :null => false
      t.integer :payer_user_id, :limit => 8, :null => false

      t.timestamps
    end
  end
end
