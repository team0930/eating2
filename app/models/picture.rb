class Picture < ApplicationRecord

	belongs_to :restaurant
  	attachment :image
end
