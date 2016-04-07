class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :desc, :song_id
end
