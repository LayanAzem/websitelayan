class Role < ActiveRecord::Base
    has_many :administrators, through: :links
    has_many :links
    
    validates :name, presence: true
    
end
