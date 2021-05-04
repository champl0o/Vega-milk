# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :additional_spend do
    title { Faker::Commerce.product_name }
    cost_in_cents { rand(100_00..10_000_00) }
    date { Faker::Date.between(from: 2.months.ago, to: Date.today) }
  end
end
