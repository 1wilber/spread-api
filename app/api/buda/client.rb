# frozen_string_literal: true

module Buda
  class Client
    include HTTParty
    base_uri 'https://www.buda.com/api/v2'

    # @param [String] market_id
    # @return [Buda::Response::OrderBook]
    def self.order_book(market_id)
      path = "/markets/#{market_id}/order_book"
      Rails.logger.info("[Buda::Client] Started GET to #{path}")
      response = get(path)

      ::Buda::Response::OrderBook.new(response)
    end

    # @return [Array<Buda::Response::Market>]
    def self.markets
      path = '/markets'
      Rails.logger.info("[Buda::Client] Started GET to #{path}")
      response = get(path)

      response['markets'].map do |market|
        ::Buda::Response::Market.new(market)
      end
    end
  end
end
