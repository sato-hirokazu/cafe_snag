class Photo < ActiveRecord::Base
  mount_uploader :file, PhotoUploader
  validates :comment, :file, presence: true
end