class User < ApplicationRecord
    has_many :user_crags
    has_many :crags, through: :user_crags

    has_many :completed_climbs
    has_many :climbs, through: :completed_climbs
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
