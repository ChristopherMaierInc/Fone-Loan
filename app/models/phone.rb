class Phone < ApplicationRecord
  belongs_to :user
  mount_uploader :image, PictureUploader
end
