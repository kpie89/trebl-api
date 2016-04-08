class Comment < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id, inverse_of: :comments
  belongs_to :song, foreign_key: :song_id, inverse_of: :comments
  belongs_to :playlist, foreign_key: :playlist_id, inverse_of: :comments
end
