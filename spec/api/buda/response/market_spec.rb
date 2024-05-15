# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Buda::Response::Market do
  describe '#initialize' do
    let(:response_data) do
      HashWithIndifferentAccess.new({
                                      "id": 'BTC-CLP',
                                      "name": 'btc-clp',
                                      "base_currency": 'BTC',
                                      "quote_currency": 'CLP',
                                      "minimum_order_amount": ['0.001', 'BTC'],
                                      "taker_fee": '0.8',
                                      "maker_fee": '0.4',
                                      "max_orders_per_minute": 100,
                                      "maker_discount_percentage": '0.0',
                                      "taker_discount_percentage": '0.0'
                                    })
    end

    it 'sets the id attribute correctly' do
      market = described_class.new(response_data)
      expect(market.id).to eq(response_data['id'])
    end
  end
end
