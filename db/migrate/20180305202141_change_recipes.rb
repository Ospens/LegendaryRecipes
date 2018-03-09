class ChangeRecipes < ActiveRecord::Migration[5.1]
  def change
	change_table :recipes do |t|
	  t.rename :category, :category_id
	end
  end
end
