class CreateCareerHasSubjects < ActiveRecord::Migration
  def change
    create_table :career_has_subjects do |t|
      t.string :typology

      t.timestamps null: false
    end
  end
end
