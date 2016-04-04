class CommentSerializer < ActiveModel::Serializer
  attributes :id, :desc
  has_one :person
end
