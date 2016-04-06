class Comment < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id
  has_one :song
  belongs_to :playlist
end
