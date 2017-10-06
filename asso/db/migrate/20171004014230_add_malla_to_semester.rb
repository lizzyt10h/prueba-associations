class AddMallaToSemester < ActiveRecord::Migration
  def change
    add_reference :semesters, :malla, index: true, foreign_key: true
  end
end
