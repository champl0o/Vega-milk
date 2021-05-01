class PackedProduct < ApplicationRecord
    belongs_to :product
    has_many :batches
end
