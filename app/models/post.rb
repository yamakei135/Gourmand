class Post < ApplicationRecord
  validates :posted_by,presence: true
  validates :restaurant_name,presence: true
  validates :rating,presence: true
  validates :comment,presence: true,length: {maximum: 140}
end
