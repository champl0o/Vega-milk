# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: redirect('/admin')
end
