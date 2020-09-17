class User < ActiveRecord::Base
  has_secure_password
  has_many :books
  validates :email, presence: :true
  validates :name, presence: :true
  validates :name, uniqueness: :true
end
