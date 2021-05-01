class BoughtIngredient < ApplicationRecord
    belongs_to :supplier
    belongs_to :ingredient
    belongs_to :employee
end
