class IngredientsStorage < ApplicationRecord
    has_many :ingredients
    has_many :employees
end
