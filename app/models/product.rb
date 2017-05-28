class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  has_many :photos
  accepts_nested_attributes_for :photos
  has_many :posts
  has_many :dkxes
  has_many :changjings, :through => :dkxes

end
