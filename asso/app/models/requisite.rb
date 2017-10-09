class Requisite < ActiveRecord::Base
    belongs_to :follower, foreign_key: "follower_id", class_name: "CareerHasSubject"
    belongs_to :followee, foreign_key: "followee_id", class_name: "CareerHasSubject"
end
