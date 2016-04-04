class SongSerializer < ActiveModel::Serializer
  attributes :id
  has_one :playlist
  has_one :comment
end
