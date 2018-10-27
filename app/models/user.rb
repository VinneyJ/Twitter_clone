class User < ApplicationRecord
  validates_presence_of :email, :name, :password, :confirmation_password
  validates :password, confirmation: true
end
