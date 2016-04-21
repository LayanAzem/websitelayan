class User < ActiveRecord::Base
  has_secure_password
  
    has_many :ideas
    has_many :link_tables
    has_many :roles, through: :link_tables
  
    validates :name, :password_digest,:role_id, presence: true
  
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+[a-z]+\z/i 
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false } 
    before_save {self.email= email.downcase }
end
