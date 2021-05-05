# frozen_string_literal: true

module RailsAdmin
  module Config
    module Actions
      class IncomeReport < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option(:collection) { true }
        register_instance_option(:link_icon) { 'fa fa-money' }
        register_instance_option(:http_methods) { %i[get] }

        class InvalidDateError < ArgumentError; end

        PARSE_DATE = lambda do |param|
          param.presence && Date.civil(
            param['date(1i)'].to_i,
            param['date(2i)'].to_i,
            param['date(3i)'].to_i
          )
        rescue ArgumentError => e
          raise InvalidDateError, e.message
        end

        register_instance_option :controller do
          proc do
            @from_date = PARSE_DATE.call(params[:from]) || Date.current
            @to_date = PARSE_DATE.call(params[:to]) || @from_date

            time_range = @from_date.beginning_of_day..@to_date.end_of_day

            @additional_spends =
              AdditionalSpend.in_date_range(time_range).order_by_date

            @days = (@to_date - @from_date).to_i

            @employees =
              Employee.in_date_range(time_range).order_by_begin_date

            @bought_ingredients =
              BoughtIngredient.in_date_range(time_range).order_by_date

            @orders =
              Order.in_date_range(time_range).order_by_date

            respond_to do |format|
              format.html { render @action.template_name }
              format.js   { render @action.template_name, layout: false }
            end
          rescue InvalidDateError => e
            flash[:error] = e.message
            redirect_to back_or_index
          end
        end
      end
    end
  end
end
