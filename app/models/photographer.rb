class Photographer < ApplicationRecord
  has_many :images
  has_many :user_photographers
  has_many :orders
  has_many :comments
  has_many :users, through: :user_photographers
end
