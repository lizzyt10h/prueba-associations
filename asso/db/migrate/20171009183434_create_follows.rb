class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.integer "follower_id", :null => false
      t.integer "followee_id", :null => false
      t.timestamps null: false
    end
  end
end
