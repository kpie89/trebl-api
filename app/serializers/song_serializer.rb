class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :duration, :soundcloud_id, :playlists
  has_many :playlists
  has_many :comments

  def playlists
    object.playlists.pluck(:id)
  end

end
