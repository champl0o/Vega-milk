class Product < ApplicationRecord
    has_many :product_ingredients
    has_many :ingredients, through: :product_ingredients
    has_many :packed_products

    enum product_type: [ :milk, :cheese, :yoghurt, :icecream ]
end
