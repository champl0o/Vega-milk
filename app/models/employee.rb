# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :position
  has_and_belongs_to_many :batches
end
