class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :avatar, :bio
  has_many :photographers
  has_many :orders
  has_many :comments
end
