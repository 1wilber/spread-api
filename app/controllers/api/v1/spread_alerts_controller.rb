# frozen_string_literal: true

module Api
  module V1
    class SpreadAlertsController < ApplicationController
      before_action :set_spread_alert, only: %i[show update destroy check]

      def index
        @spread_alerts = SpreadAlert.all

        render_spread_alert(@spread_alerts)
      end

      def show
        render_spread_alert(@spread_alert)
      end

      def create
        @spread_alert = SpreadAlert.create(spread_alert_params)

        if @spread_alert.id
          render_spread_alert(@spread_alert)
        else
          render_errors(@spread_alert)
        end
      end

      def update
        if @spread_alert.update(spread_alert_params)
          render_spread_alert(@spread_alert)
        else
          head :unprocessable_entity
        end
      end

      def destroy
        @spread_alert.destroy

        head :no_content
      end

      def check
        alert_spread   = @spread_alert.spread.to_f
        order_book     = Buda::Client.order_book(@spread_alert.market_id)
        current_spread = Buda::CalculateSpreadService.call(order_book).to_f

        render json: {
          market_id: @spread_alert.market_id,
          alert_spread:,
          current_spread:,
          message: @spread_alert.message(current_spread)
        }
      end

      private

      def spread_alert_params
        params.require(:spread_alert).permit(:market_id, :spread)
      end

      def set_spread_alert
        @spread_alert = SpreadAlert.find_by(market_id: params[:market_id])
      end

      def render_spread_alert(spread_alert)
        render json: spread_alert.as_json(except: [:id])
      end
    end
  end
end
