class Post < ApplicationRecord
  
  has_one_attached :image
  validates :posted_by,presence: true
  validates :restaurant_name,presence: true
  validates :cost,presence: true,length: {maximum: 6}
  validates :rating,presence: true
  validates :comment,presence: true,length: {maximum: 140}
end
