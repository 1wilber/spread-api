# frozen_string_literal: true

module Api
  module V1
    class SpreadsController < ApplicationController
      def index
        result = []
        market_ids = Buda::Client.markets.map(&:id)
        futures = market_ids.map do |market_id|
          Concurrent::Future.execute do
            order_book = Buda::Client.order_book(market_id)
            {
              market_id:,
              spread: ::Buda::CalculateSpreadService.call(order_book)
            }
          end
        end
        futures.each { |future| result << future.value }

        render json: { spreads: result }
      end
    end
  end
end
