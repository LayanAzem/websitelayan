class Role < ActiveRecord::Base
    has_many :users, through: :links
    has_many :links
    
    validates :name, presence: true
    
end
