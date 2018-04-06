class Recipe < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :category
	has_many :recipes_ingredients
	has_many :ingredients, through: :recipes_ingredients
  has_many :steps

  accepts_nested_attributes_for :ingredients,
                                reject_if: proc { |attributes| attributes['name'].blank? },
                                allow_destroy: true

  accepts_nested_attributes_for :steps,
                                reject_if: proc { |attributes| attributes['step'].blank? },
                                allow_destroy: true

  validates :title, :description, :image, presence: true

end
