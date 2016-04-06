class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :desc

  # def song
  #   object.song.pluck(:title)
  # end

end
