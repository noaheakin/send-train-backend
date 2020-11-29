class Crag < ApplicationRecord

    has_many :user_crags
    has_many :users, through: :user_crags
    
end
