class Semester < ActiveRecord::Base
    belongs_to :malla
    has_many :semester_has_subjects
    has_many :subjects, through: :semester_has_subjects
end
