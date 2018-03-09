class RecipesController < ApplicationController

  def index
  	@recipes = []
  	@recipes << Recipe.where(category: 1).take(3)
  	@recipes << Recipe.where(category: 2).take(3)
  	@categories = Category.all
  end

  def show
  	@recipe = Recipe.find(params[:id])
  	@ingredients = @recipe.ingredients
  end

end
