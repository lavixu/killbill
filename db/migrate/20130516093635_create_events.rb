class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :description
      t.string :event_type
      t.decimal :total_amount
      t.timestamp :occurence_date
      t.timestamps
    end
  end
end
