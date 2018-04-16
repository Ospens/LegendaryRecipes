class IngredientsController < ApplicationController
  before_action :ingredient_find, only: [:show, :edit, :destroy, :update]

  def index
    @ingredients = Ingredient.all.order('title ASC')
  end

  def show
  end

  def edit

  end

  def update
    if  @ingredient.update_attributes(ingredients_params)
      redirect_to action: "index", notice: 'Игредиент успешно изменен'
    else
      render :edit
    end
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredients_params)
    if @ingredient.save
      redirect_to action: "index", notice: 'Ингредиент успешно создан'
    else
      render :new
    end
  end

  private

  def ingredient_find
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredients_params
    params.require(:ingredient)
    .permit(:title, :proteins, :fats, :carbohydrates, :calories)
  end
end
