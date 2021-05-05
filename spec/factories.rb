# frozen_string_literal: true

require 'faker'

FactoryBot.define do
  factory :additional_spend do
    title { Faker::Commerce.product_name }
    cost_in_cents { rand(100_00..10_000_00) }
    date { Faker::Date.between(from: 2.months.ago, to: Date.today) }
  end

  factory :position do
    name { Faker::Job.title }
    salary_in_cents { rand(1_000_00..10_000_00) }
  end

  factory :employee do
    position { Position.find(rand(Position.first.id..(Position.last.id - 1))) }
    name { Faker::FunnyName.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    begin_date { Faker::Date.between(from: 2.months.ago, to: Date.today) }
    end_date { rand(1..2) == 1 ? Faker::Date.between(from: begin_date, to: Date.today) : nil }
  end

  factory :supplier do
    name { Faker::Company.name }
    contact_person_name { Faker::FunnyName.name }
    email { Faker::Internet.email }
    is_active { rand(1..2) == 1 }
  end

  factory :ingredient do
    name { Faker::Food.ingredient }
  end

  factory :bought_ingredient do
    supplier { Supplier.find(rand(Supplier.first.id..(Supplier.last.id - 1))) }
    ingredient { Ingredient.find(rand(Ingredient.first.id..(Ingredient.last.id - 1))) }
    employee { Employee.find(rand(Employee.first.id..(Employee.last.id - 1))) }
    weight_in_kg { rand(100..1_000) }
    kg_price_in_cents { rand(100_00..500_00) }
    order_date { Faker::Date.between(from: 2.months.ago, to: Date.today) }
    estimated_delivery_date { Faker::Date.between(from: order_date, to: Date.today + 5) }
    delivery_date { Faker::Date.between(from: order_date, to: Date.today + 5) }
    status do
      if delivery_date.future?
        'On the way'
      else
        'Delivered'
      end
    end
  end
end
