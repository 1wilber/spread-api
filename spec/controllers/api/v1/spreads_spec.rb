require 'rails_helper'

RSpec.describe Api::V1::SpreadsController, type: :controller do
  describe 'GET #index' do
    let(:market_ids) { %w[BTC-CLP ETH-CLP] }
    let(:order_book) { instance_double('Buda::Response::OrderBook') }
    let(:spread_service) { instance_double('Buda::CalculateSpreadService') }

    before do
      allow(Buda::Client).to receive(:markets).and_return(market_ids.map do |id|
                                                            instance_double('Buda::Response::Market', id:)
                                                          end)
      allow(Buda::Client).to receive(:order_book).and_return(order_book)
      allow(Buda::CalculateSpreadService).to receive(:call).and_return(0.05)
    end

    it 'returns HTTP success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'renders JSON with spreads' do
      get :index
      expect(JSON.parse(response.body)).to include('spreads')
    end

    it 'calculates spread for each market' do
      expect(Buda::CalculateSpreadService).to receive(:call).twice
      get :index
    end
  end
end
