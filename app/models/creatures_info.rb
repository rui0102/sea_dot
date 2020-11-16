class CreaturesInfo < ApplicationRecord

  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
  validates :latitude, presence: true, length: {in: 5..9}
  validates :longitude, presence: true, length: {in: 6..10}
  validates :weather, length: {maximum: 5}
  validates :sea_lavel, length: {maximum: 2}
  validates :visibility, length: {maximum: 2}
  validates :temperature, length: {maximum: 15}
  validates :departure, length: {maximum: 15}
  
end




