class RecipesController < ApplicationController

  def index
  	@recipes = []
  	@recipes << Recipe.where(category: 1).order("RANDOM()").take(3)
  	@recipes << Recipe.where(category: 2).order("RANDOM()").take(3)
  	@categories = Category.all
  end

  def show
  	@recipe = Recipe.find(params[:id])
  	@ingredients = @recipe.ingredients
  end

  def new
  	@recipe = Recipe.new
  end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			redirect_to @recipe
		else
			render :new
		end
	end

  def edit
  	@recipe = Recipe.find(params[:id])
  end

  def update
  	@recipe = Recipe.find(params[:id])
  	if  @recipe.update_attributes(recipe_params)
  		redirect_to @recipe
  	else
  		render :edit
  	end
  end

  def find_recipe
    @result = Recipe.where('description LIKE ?', "%#{params[:textValue]}%").take(10)
    render partial: 'result'
  end

  private

  def recipe_params
		params.require(:recipe)
    .permit(:title, :description, :img, :category_id, :time, :portion, :image)
  end
end
