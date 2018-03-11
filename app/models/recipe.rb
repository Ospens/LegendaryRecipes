class Recipe < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :category
	has_many :recipes_ingredients
	has_many :ingredients, through: :recipes_ingredients
end
