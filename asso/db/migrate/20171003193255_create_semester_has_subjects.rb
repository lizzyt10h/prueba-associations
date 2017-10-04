class CreateSemesterHasSubjects < ActiveRecord::Migration
  def change
    create_table :semester_has_subjects do |t|

      t.timestamps null: false
    end
  end
end
