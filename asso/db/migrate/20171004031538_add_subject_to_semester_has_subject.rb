class AddSubjectToSemesterHasSubject < ActiveRecord::Migration
  def change
    add_reference :semester_has_subjects, :subject, index: true, foreign_key: true
  end
end
