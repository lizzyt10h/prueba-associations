class AddSemestersAssociationToMalla < ActiveRecord::Migration
  def self.up
      add_column :semesters, :malla_id, :integer
      add_index 'semesters', ['malla_id'], :name => 'semester_malla_id' 
  end

  def self.down
      remove_column :semesters, :malla_id
  end
end
