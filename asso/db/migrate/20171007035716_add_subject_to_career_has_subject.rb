class AddSubjectToCareerHasSubject < ActiveRecord::Migration
  def change
    add_reference :career_has_subjects, :subject, index: true, foreign_key: true
  end
end
