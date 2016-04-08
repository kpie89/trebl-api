class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :desc, :song_id, :user_id
end
