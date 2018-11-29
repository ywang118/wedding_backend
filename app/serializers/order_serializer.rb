class OrderSerializer < ActiveModel::Serializer
  attributes(*Order.attribute_names.map(&:to_sym))
  belongs_to :photographer
  belongs_to :user
end
