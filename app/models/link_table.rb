class LinkTable < ActiveRecord::Base
    
    belongs_to :role
    belongs_to :user
    validates :name, :idea_id, :role_id, :user_id, presence: true 
end
