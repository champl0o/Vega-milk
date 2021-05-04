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
    position { Position.find(rand(1..(Position.all.count - 1))) }
    name { Faker::FunnyName.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    begin_date { Faker::Date.between(from: 2.months.ago, to: Date.today) }
    end_date { rand(1..2) == 1 ? Faker::Date.between(from: begin_date, to: Date.today) : nil }
  end
end
