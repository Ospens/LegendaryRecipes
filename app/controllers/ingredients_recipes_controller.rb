class IngredientsRecipesController < ApplicationController
  before_action :ingredient_find, only: [:show, :edit, :destroy, :update]

  def index
  end

  def show
  end

  def new
    @ingredient = Recipe.new
  end

  private

  def ingredient_find
  end

  def ingredients_params

  end
end
