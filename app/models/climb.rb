class Climb < ApplicationRecord
    has_many :completed_climbs
    has_many :users, through: :completed_climbs

    has_many :target_climbs
    has_many :users, through: :target_climbs
end
