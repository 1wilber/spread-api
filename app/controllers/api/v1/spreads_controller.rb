# frozen_string_literal: true

module Api
  module V1
    class SpreadsController < ApplicationController
      def index
        result = []
        market_ids = Buda::Client.markets.map(&:id)
        market_ids.each do |market_id|
          order_book = Buda::Client.order_book(market_id)
          result << {
            market_id:,
            spread: ::Buda::CalculateSpreadService.call(order_book)
          }
        end

        render json: { spreads: result }
      end
    end
  end
end
