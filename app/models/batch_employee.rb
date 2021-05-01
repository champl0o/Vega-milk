class BatchEmployee < ApplicationRecord
    belongs_to :batch
    belongs_to :employee
end
