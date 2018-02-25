class RecipesController < ApplicationController

  def index
  	@recipes = Recipe.where(category: 'meat').take(3)
  end

  def show
  	@recipe = Recipe.find(params[:id])
  end

end
