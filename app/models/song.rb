class Song < ActiveRecord::Base
  has_many :playlists, foreign_key: :playlist_id
  has_many :comments, foreign_key: :comment_id
end
