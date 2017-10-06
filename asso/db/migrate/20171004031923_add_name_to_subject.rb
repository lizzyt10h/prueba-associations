class AddNameToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :name, :string
    add_column :subjects, :credits, :integer
  end
end
