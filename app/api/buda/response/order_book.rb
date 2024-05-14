# frozen_string_literal: true

module Buda
  module Response
    class OrderBook
      # asks: Arreglo de ordenes del libro de ventas
      # bids: Arreglo de ordenes del libro de compras
      attr_reader :asks, :bids

      def initialize(response)
        @asks = response['order_book']['asks']
        @bids = response['order_book']['bids']
      end

      # El Spread, es la diferencia de precio entre la orden de venta más barata y la orden de compra más cara.
      def spread
        ask_prices = @asks.map { |ask| ask.first.to_f }.sort
        bid_prices = @bids.map { |bid| bid.first.to_f }.sort

        (ask_prices.first - bid_prices.last).truncate(2)
      end
    end
  end
end
