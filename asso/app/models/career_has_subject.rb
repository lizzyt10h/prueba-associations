class CareerHasSubject < ActiveRecord::Base
    belongs_to :career
    belongs_to :subject
    
    # follower_requisites "names" the Requisite join table for accessing through the follower association
    has_many :follower_requisites, foreign_key: :followee_id, class_name: "Requisite" 
    # source: :follower matches with the belong_to :follower identification in the Requisite model 
    has_many :followers, through: :follower_requisites, source: :follower
    
    # followee_requisites "names" the Requisite join table for accessing through the followee association
    has_many :followee_requisites, foreign_key: :follower_id, class_name: "Requisite"    
    # source: :followee matches with the belong_to :followee identification in the Requisite model   
    has_many :followees, through: :followee_requisites, source: :followee
end
