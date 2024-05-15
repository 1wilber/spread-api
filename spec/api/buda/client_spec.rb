# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Buda::Client do
  let(:market_id) { 'BTC-CLP' }

  describe '.order_book' do
    it 'returns an instance of Buda::Response::OrderBook' do
      order_book = described_class.order_book(market_id)
      expect(order_book).to be_an_instance_of(Buda::Response::OrderBook)
    end
  end

  describe '.markets' do
    it 'returns an array of Buda::Response::Market' do
      markets = described_class.markets
      expect(markets).to all(be_an_instance_of(Buda::Response::Market))
    end
  end
end
