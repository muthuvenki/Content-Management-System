class Category < ActiveRecord::Base
  has_many :subcats
  mount_uploader :image,ImageUploader
end
