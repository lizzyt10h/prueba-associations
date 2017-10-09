class CreateRequisites < ActiveRecord::Migration
  def change
    create_table :requisites do |t|
      t.integer "follower_id", :null => false
      t.integer "followee_id", :null => false
      t.timestamps null: false
    end
  end
end
