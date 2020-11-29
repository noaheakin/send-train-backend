class User < ApplicationRecord
    has_many :user_crags
    has_many :crags, through: :user_crags
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
