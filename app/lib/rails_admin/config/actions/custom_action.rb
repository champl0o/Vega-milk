# frozen_string_literal: true

module RailsAdmin
  module Config
    module Actions
      class CustomAction < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option(:collection) { true }
        # register_instance_option(:only) { Employee }
        register_instance_option(:link_icon) { 'fa fa-money' }
        register_instance_option(:http_methods) { %i[get] }

        register_instance_option :controller do
          proc do
            # Read more here, or ask one dude... :)
            # https://github.com/sferik/rails_admin/wiki/Custom-action
          end
        end
      end
    end
  end
end
