# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, :omniauthable,
  # :recoverable, :rememberable, :validatable, :registerable
  devise :database_authenticatable

  belongs_to :employee

  enum role: [ :user, :admin, :sales_manager, :storage_manager, :hr ]
end
