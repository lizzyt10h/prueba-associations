class AddNumberToSemesters < ActiveRecord::Migration
  def change
    add_column :semesters, :number, :integer
  end
end
