# frozen_string_literal: true

module Buda
  class Client
    include HTTParty
    base_uri 'https://www.buda.com/api/v2'

    def self.order_book(market_id)
      response = get("/markets/#{market_id}/order_book")

      ::Buda::Response::OrderBook.new(response)
    end

    def self.markets
      response = get('/markets')

      response['markets'].map do |market|
        ::Buda::Response::Market.new(market)
      end
    end
  end
end
