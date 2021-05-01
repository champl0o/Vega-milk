# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :position
  has_many :batch_employee
  has_many :batches, through: :batch_employee
end
