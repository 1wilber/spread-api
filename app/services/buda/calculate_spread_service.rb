# frozen_string_literal: true

module Buda
  class CalculateSpreadService
    # @param [Buda::Response::OrderBook] order_book
    def self.call(order_book)
      ask_prices       = order_book.asks.map { |ask| BigDecimal(ask.first) }.sort
      bid_prices       = order_book.bids.map { |bid| BigDecimal(bid.first) }.sort

      ask_lower_price  = ask_prices.first || 0
      bid_higher_price = bid_prices.last || 0

      (ask_lower_price - bid_higher_price).to_fs
    end
  end
end
