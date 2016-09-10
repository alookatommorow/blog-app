class Movie < ActiveRecord::Base
  has_many :likes, as: :likeable
  has_many :reviews, dependent: :destroy

end