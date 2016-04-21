class Platform < ActiveRecord::Base
    belongs_to :idea
    validates :platformname, :idea_id, presence: true
    
    
    
end
