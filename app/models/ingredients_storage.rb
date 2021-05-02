class IngredientsStorage < ApplicationRecord
    belongs_to :ingredient
    belongs_to :employee
end
