class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :photographers, through: :orders
  validates :username, uniqueness: true
end
