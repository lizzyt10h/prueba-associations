class AddNameToMallas < ActiveRecord::Migration
  def change
    add_column :mallas, :name, :string
  end
end
