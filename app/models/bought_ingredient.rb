class BoughtIngredient < ApplicationRecord
    scope :in_date_range, ->(range) { where(arel_table[:delivery_date].between(range)) }
    scope :order_by_date, ->(direction = :asc) { order(delivery_date: direction) }

    belongs_to :supplier
    belongs_to :ingredient
    belongs_to :employee
    
    def cost
        (weight_in_kg * kg_price_in_cents) / 100
    end
end
