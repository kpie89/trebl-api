#
class User < ActiveRecord::Base
  include Authentication
  has_one :person
  has_many :playlists
  has_many :comments
  has_many :examples
end
