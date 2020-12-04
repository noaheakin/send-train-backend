class User < ApplicationRecord
    has_many :user_crags
    has_many :crags, through: :user_crags

    has_many :completed_climbs
    has_many :climbs_done, through: :completed_climbs, source: :climb
    
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

    def get_completed_climb_ids
        self.climbs_done.map{|climb| climb.mp_id}.join(',')
    end

    # def get_last_fav_crag
        
    # end


end
