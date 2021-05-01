class ProductIngredient < ApplicationRecord
    belongs_to :products
    has_and_belongs_to_many :ingredients
end
