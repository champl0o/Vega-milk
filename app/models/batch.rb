class Batch < ApplicationRecord
    belongs_to :packed_product
    has_and_belongs_to_many :employees
end
