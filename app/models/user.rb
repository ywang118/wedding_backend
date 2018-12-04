class User < ApplicationRecord
  has_secure_password
  has_many :user_photographers
  has_many :photographers, through: :user_photographers
  has_many :orders
  has_many :comments
  validates :username, uniqueness: true
end
