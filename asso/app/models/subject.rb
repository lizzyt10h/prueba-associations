class Subject < ActiveRecord::Base
    has_many :career_has_subjects
    has_many :careers, through: :career_has_subjects
end
