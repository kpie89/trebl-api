class PersonSerializer < ActiveModel::Serializer
  attributes :id, :name, :picture, :bio
  has_one :user
end
