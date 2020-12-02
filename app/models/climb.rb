class Climb < ApplicationRecord
    has_many :completed_climbs
    has_many :users, through: :completed_climbs
end
