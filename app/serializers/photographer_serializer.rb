class PhotographerSerializer < ActiveModel::Serializer
  attributes(*Photographer.attribute_names.map(&:to_sym))
  has_many :images
  # has_many :orders

  def users
    object.users
  end
end
