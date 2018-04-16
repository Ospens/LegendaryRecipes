class RecipesIngredient < ApplicationRecord
  belongs_to :recipe, :dependent => :destroy
  belongs_to :ingredient, :dependent => :destroy
end
