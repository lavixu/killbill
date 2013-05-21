class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.integer :item_id, :limit => 8
      t.integer :user_id, :limit => 8
      t.decimal :amount

      t.timestamps
    end
  end
end
