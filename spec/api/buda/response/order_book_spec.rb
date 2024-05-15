# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Buda::Response::OrderBook do
  describe '#initialize' do
    let(:response_data) do
      HashWithIndifferentAccess.new({
                                      "order_book": {
                                        "asks": [
                                          ['836677.14', '0.447349'],
                                          ['837462.23', '1.43804963'],
                                          ['837571.89', '1.41498541'],
                                          ['837597.23', '0.13177617'],
                                          ['837753.25', '1.40724154'],
                                          ['837858.51', '1.40988433'],
                                          ['837937.0', '1.46619702'],
                                          ['838000.57', '1.4527277'],
                                          ['838305.78', '0.8317892']
                                        ],
                                        "bids": [
                                          ['821580.0', '0.25667389'],
                                          ['821211.0', '0.27827307'],
                                          ['819882.39', '1.40003128'],
                                          ['819622.99', '1.40668862'],
                                          ['819489.9', '1.41736995'],
                                          ['818942.2', '1.41001753'],
                                          ['818820.29', '0.93677863'],
                                          ['816879.83', '1.44022295']
                                        ]
                                      }
                                    })
    end
    subject { described_class.new(response_data) }

    it 'sets the asks attribute correctly' do
      expect(subject.asks).to eq(response_data[:order_book][:asks])
    end

    it 'sets the bids attribute correctly' do
      expect(subject.bids).to eq(response_data[:order_book][:bids])
    end
  end
end
