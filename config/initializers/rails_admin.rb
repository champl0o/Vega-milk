# frozen_string_literal: true

require 'nested_form/engine'
require 'nested_form/builder_mixin'

RailsAdmin::CUSTOM_ACTIONS = %w[
  custom_action
  finance_report
  salary_report
  bought_ingredients_report
  income_report
].freeze

RailsAdmin::CUSTOM_ACTIONS.each do |action|
  require Rails.root.join("app/lib/rails_admin/config/actions/#{action}")
end

RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    custom_action
    finance_report
    salary_report
    bought_ingredients_report
    income_report

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
