class AddValuToRecipesIngredients < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes_ingredients, :quantity, :string
  end
end
