class AdditionalSpend < ApplicationRecord
  scope :in_date_range, ->(range) { where(arel_table[:date].between(range)) }
  scope :order_by_date, ->(direction = :asc) { order(date: direction) }

  validates :title, :date, presence: true
  validates :cost_in_cents, numericality: { greater_than: 0 }

  def cost
    BigDecimal(cost_in_cents) / 100
  end
end
