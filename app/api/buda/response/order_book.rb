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
    end
  end
end
