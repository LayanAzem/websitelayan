class Idea < ActiveRecord::Base
    belongs_to :user
    validates :title, :overview, :HelpNeeded, presence: true
end
