# frozen_string_literal: true

class Employee < ApplicationRecord
  belongs_to :position
end