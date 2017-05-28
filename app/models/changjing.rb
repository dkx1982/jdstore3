class Changjing < ApplicationRecord
  has_many :dkxes
  has_many :products, :through => :dkxes
end
