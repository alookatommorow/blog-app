class Book < ActiveRecord::Base
  has_many :likes, as: :likeable
  validates :title, uniqueness: { scope: :author }

end