class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :creatures_infos, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :picture, PictureUploader
  validates :name, presence: true, length: { maximum: 30 }
  validates :age, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 128}  
  validates :ship_name, length: { maximum: 30 }
  validates :self_introduction, length: { maximum: 100 }

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = 'ゲストユーザー'
    end
  end
end
