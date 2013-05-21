class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :event_id, :limit => 8, :null => false
      t.string :description
      t.decimal :amount
      t.string :split_type

      t.timestamps
    end
  end
end
