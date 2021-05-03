class Customer < ApplicationRecord
    belongs_to :sales_manager, class_name: 'Employee'
end
