class IngredientsAddProtein < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :proteins, :float
    add_column :ingredients, :fats, :float
    add_column :ingredients, :carbohydrates, :float
    add_column :ingredients, :calories, :float
  end
end
