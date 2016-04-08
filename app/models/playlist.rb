class Playlist < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id, inverse_of: :playlists
  belongs_to :song, foreign_key: :song_id, inverse_of: :playlists
  has_many :comments
end
