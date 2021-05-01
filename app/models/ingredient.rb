class Ingredient < ApplicationRecord
    has_and_belongs_to_many :product_ingredients
    has_many :products, through: :product_ingredients
end
