class Ingredient < ApplicationRecord

	has_many :recipes_ingredients
	has_many :recipes, through: :recipes_ingredients

  accepts_nested_attributes_for :recipes_ingredients

end
