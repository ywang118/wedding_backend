class ImageSerializer < ActiveModel::Serializer
  attributes(*Image.attribute_names.map(&:to_sym))
  belongs_to :photographer
end
