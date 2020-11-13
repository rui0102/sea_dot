class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :picture, PictureUploader 
  validates :name, presence: true, length:{maximum: 30}
  validates :age, length:{maximum: 3}
  validates :ship_name, length:{maximum: 30}
  validates :self_introduction, length:{maximum: 100}

end
