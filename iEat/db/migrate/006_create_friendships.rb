class CreateFriendships < ActiveRecord::Migration
  def self.up
    create_table :friendships do |t|
      t.column :user_id, :integer, :null => false, :references => :users
      t.column :friend_id, :integer, :null => false, :references => :users
      t.column :accepted, :boolean
    end
  end

  def self.down
    drop_table :friendships
  end
end
