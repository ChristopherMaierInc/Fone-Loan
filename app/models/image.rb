class Image < ApplicationRecord
  belongs_to :phone
  mount_uploader :picture, PictureUploader
  
end
