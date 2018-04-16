class Recipe < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :category
	has_many :recipes_ingredients
	has_many :ingredients, through: :recipes_ingredients
  has_many :steps

  accepts_nested_attributes_for :ingredients,
                                reject_if: proc { |a| a['title'].blank? },
                                allow_destroy: true

  accepts_nested_attributes_for :steps,
                                reject_if: proc { |a| a['step'].blank? },
                                allow_destroy: true

  validates :title, :description, :image, presence: true

  def ingredients_attributes=(ingredients_params)
    new_ingredients_list = ingredients_params.select { |id, param| param[:_destroy] == 'false' && param[:title].length != 0 }
    @recipe_ingred = []
    self.ingredients = new_ingredients_list.map do |id, ingr|
      recipe_ingred = ingr[:recipes_ingredients_attributes]['0'] if ingr[:recipes_ingredients_attributes].present?
      new_ingred = self.ingredients.where(title: ingr[:title].strip).first_or_create!
      new_ingred.recipes_ingredients.first.update_attributes(quantity: recipe_ingred['quantity'])
      new_ingred
    end
  end

end
