class Batch < ApplicationRecord
    belongs_to :packed_product
    has_many :batch_employee
    has_many :employees, through: :batch_employee
end
