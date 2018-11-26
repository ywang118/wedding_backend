class PhotographerSerializer < ActiveModel::Serializer
  has_many :images
  attributes(*Photographer.attribute_names.map(&:to_sym))
end
