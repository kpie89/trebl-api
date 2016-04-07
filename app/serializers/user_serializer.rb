#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :playlists

  def playlists
    object.playlists.pluck(:id)
  end
  
end
