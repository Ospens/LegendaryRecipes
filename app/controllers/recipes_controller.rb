class RecipesController < ApplicationController

  def index
  	@recipes= []
  	@recipes << Recipe.where(category: 'Мясо').take(3)
  	@recipes << Recipe.where(category: 'Салат').take(3)
  end

  def show
  	@recipe = Recipe.find(params[:id])
  end

end
