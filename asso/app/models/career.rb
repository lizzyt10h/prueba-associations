class Career < ActiveRecord::Base
    has_many :mallas
    
    has_many :career_has_subjects
    has_many :subjects, through: :career_has_subjects
end
