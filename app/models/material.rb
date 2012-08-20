class Material < ActiveRecord::Base
  attr_accessible :image, :name, :number, :price, :remark
  
  mount_uploader :image, ImageUploader
end
