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
    position
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
    supplier
    ingredient
    employee
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

  factory :product do
    name { Faker::Commerce.product_name }
    type { rand(0..3) }
    fat_percentage { rand(0.1..30.0) }
  end

  factory :product_ingredient do
    ingredient
    product
    weight_in_gramms { rand(1_000..10_000) }
  end

  factory :packed_product do
    name { Faker::Commerce.product_name }
    weight_in_gramms { rand(1_000..10_000) }
    package_type { rand(0..2) }
    product
    price_in_cents { rand(1_000_00..5_000_00) }
  end

  factory :batch do
    packed_product
    batch_number { rand(0..1_000_000) }
    produce_date { Faker::Date.between(from: 2.months.ago, to: Date.today) }
    expiration_date { Faker::Date.between(from: produce_date, to: (produce_date + rand(10..1000))) }
    units { rand(10..1_000) }
    cancelled_units { rand(0..units) }
  end

  factory :customer do
    name { Faker::Company.name }
    contact_person_name { Faker::FunnyName.name }
    phone { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    is_active { rand(1..2) == 1 }
    sales_manager { Employee.find(rand(Employee.first.id..Employee.last.id)) }
  end

  factory :order do
    batch { rand(1..2) == 1 ? batch : nil }
    customer
    packed_product
    unit_price_in_cents { rand(100_00..500_00) }
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
    ordered_units { rand(1..1000) }
    sold_units { rand(0..ordered_units) }
  end
end
