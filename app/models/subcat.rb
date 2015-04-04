class Subcat < ActiveRecord::Base
  belongs_to :category
  has_many :cattab
  mount_uploader :image,ImageUploader
end
