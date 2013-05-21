class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
	t.integer :user1_id , :limit =>8, :null => false
	t.integer :user2_id , :limit =>8, :null => false
        t.timestamps
    end
  end
end
