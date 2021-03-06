class CommentSerializer < ActiveModel::Serializer
  attributes(*Comment.attribute_names.map(&:to_sym))
  belongs_to :photographer
  belongs_to :user
end
