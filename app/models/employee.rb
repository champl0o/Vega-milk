# frozen_string_literal: true

class Employee < ApplicationRecord
  scope :in_date_range, ->(range) { where(arel_table[:begin_date].between(range)) }
  scope :order_by_begin_date, -> { order(begin_date: :desc) }

  belongs_to :position
  has_and_belongs_to_many :batches

  def salary
    BigDecimal(position.salary_in_cents) / 100
  end

  def salary_per_day
    (salary / 30).ceil(2)
  end
end
