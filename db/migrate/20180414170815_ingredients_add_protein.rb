class IngredientsAddProtein < ActiveRecord::Migration[5.1]
  def change
    add_column :ingredients, :proteins, :integer
    add_column :ingredients, :fats, :integer
    add_column :ingredients, :carbohydrates, :integer
    add_column :ingredients, :calories, :integer
  end
end
