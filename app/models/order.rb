class Order < ApplicationRecord
    belongs_to :batch, optional: true
    belongs_to :customer
    belongs_to :packed_product
end
