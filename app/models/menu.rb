class Menu < ActiveRecord::Base
  has_many :category
  mount_uploader :image, ImageUploader
end
