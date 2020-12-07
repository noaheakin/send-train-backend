class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :bio, :location, :profile_pic, :climbs_done, :climbs_want, :crags

  # def climbs_done 
  #   object.completed_climbs.map{|c| {completed_climb_id: c.id}.merge(c.climb.attributes)}
  # end

  def crags
    object.crags
  end

end
