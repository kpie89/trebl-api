class CommentSerializer < ActiveModel::Serializer
  attributes :id, :desc, :user_id, :playlist_id
  belongs_to :playlist
  belongs_to :user

  # def playlist
  #   object.playlist.pluck(:id)
  # end

end
