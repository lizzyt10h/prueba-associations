class Subject < ActiveRecord::Base
    has_many :semester_has_subjects
    has_many :semesters, through: :semester_has_subjects
end
