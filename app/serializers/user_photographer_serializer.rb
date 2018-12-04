class UserPhotographerSerializer < ActiveModel::Serializer
  attributes(*UserPhotographer.attribute_names.map(&:to_sym))
  belongs_to :photographer
  belongs_to :user
end
