class Like < ActiveRecord::Base
  belongs_to :likeable, polymorphic: true
  belongs_to :user

  validates :user_id, presence: true
  validates :likeable_id, presence: true
  validates :likeable_type, presence: true
end