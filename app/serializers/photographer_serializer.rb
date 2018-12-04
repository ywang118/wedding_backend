class PhotographerSerializer < ActiveModel::Serializer
  attributes(*Photographer.attribute_names.map(&:to_sym))
  has_many :images
  has_many :user_photographers
  has_many :orders
  has_many :comments
  def users
    object.users
  end
end
