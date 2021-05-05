class PackedProduct < ApplicationRecord
    belongs_to :product
    has_many :batches

    enum package_type: [ :glass, :tetrapak, :plastic, :mixed, :other ]
end
