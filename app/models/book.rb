class Book < ActiveRecord::Base
  has_many :likes
  validates :title, uniqueness: { scope: :author }

end