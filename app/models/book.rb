class Book < ActiveRecord::Base
  belongs_to :user
  validates :title, :publisher, presence: :true
end
