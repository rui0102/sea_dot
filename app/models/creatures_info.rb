class CreaturesInfo < ApplicationRecord

  belongs_to :user
  #エラー mount_uploader :picture, PictureUploader #uploader

end
