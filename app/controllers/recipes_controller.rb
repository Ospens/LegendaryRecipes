class RecipesController < ApplicationController
  before_action :recipe_find, only: [:show, :edit, :destroy, :update]
  def index
  	@recipes = []
  	@recipes << Recipe.where(category: 1).order("RANDOM()").take(3)
  	@recipes << Recipe.where(category: 2).order("RANDOM()").take(3)
  	@categories = Category.all
  end

  def show
  	@ingredients = @recipe.ingredients
  end

  def new
  	@recipe = Recipe.new
  end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			redirect_to @recipe, notice: 'Рецепт успешно создан'
		else
			render :new
		end
	end

  def edit

  end

  def update
    if  @recipe.update_attributes(recipe_params)
  		redirect_to @recipe, notice: 'Рецепт успешно изменен'
  	else
  		render :edit
  	end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path, notice: 'Рецепт успешно удален'
  end

  def find_recipe
    @result = Recipe.where('description LIKE ?', "%#{params[:textValue]}%").take(10)
    render partial: 'result'
  end

  private

  def recipe_find
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
		params.require(:recipe)
    .permit(:title,
            :description,
            :img,
            :category_id,
            :time,
            :portion,
            :image,
            ingredients_attributes: [:id, :title, :_destroy, recipes_ingredients_attributes: [:id, :quantity]],
            steps_attributes: [:id, :step, :_destroy])
  end
end
