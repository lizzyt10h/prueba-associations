class AddSemesterToSemesterHasSubject < ActiveRecord::Migration
  def change
    add_reference :semester_has_subjects, :semester, index: true, foreign_key: true
  end
end
