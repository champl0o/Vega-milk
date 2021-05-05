class Order < ApplicationRecord
    scope :in_date_range, ->(range) { where(arel_table[:delivery_date].between(range)) }
    scope :order_by_date, ->(direction = :asc) { order(delivery_date: direction) }

    belongs_to :batch, optional: true
    belongs_to :customer
    belongs_to :packed_product

    def cost
        BigDecimal(unit_price_in_cents * sold_units) / 100
    end
end
