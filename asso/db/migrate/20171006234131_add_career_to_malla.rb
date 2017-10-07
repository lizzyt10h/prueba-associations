class AddCareerToMalla < ActiveRecord::Migration
  def change
    add_reference :mallas, :career, index: true, foreign_key: true
  end
end
