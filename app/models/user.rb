# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable,
  # :recoverable, :rememberable, :validatable, :registerable
  devise :database_authenticatable

  belongs_to :employee

  ROLES = {
    user: 0,
    admin: 1,
    sales_manager: 2,
    storage_manager: 3
  }.freeze
end
