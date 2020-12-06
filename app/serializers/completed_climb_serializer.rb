class CompletedClimbSerializer < ActiveModel::Serializer
  attributes :id, :climb_id, :user_id, :climb

  def climb
    object.merge(object.climb.attributes)
  end
end
