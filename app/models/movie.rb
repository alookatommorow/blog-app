class Movie < ActiveRecord::Base
  has_many :likes
  has_many :reviews, dependent: :destroy

end