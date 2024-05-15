require 'rails_helper'

RSpec.describe SpreadAlert, type: :model do
  subject { described_class.new(market_id: 'BTC-CLP', spread: 0.05) }
  describe 'validations' do
    it { is_expected.to validate_presence_of(:market_id) }
    it { is_expected.to validate_uniqueness_of(:market_id) }
    it { is_expected.to validate_presence_of(:spread) }
  end

  describe '#message' do
    context 'when current_spread is greater than spread' do
      it 'returns :greater' do
        expect(subject.message(0.06)).to eq(:greater)
      end
    end

    context 'when current_spread is lower than spread' do
      it 'returns :lower' do
        expect(subject.message(0.04)).to eq(:lower)
      end
    end

    context 'when current_spread is equal to spread' do
      it 'returns :equal' do
        expect(subject.message(0.05)).to eq(:equal)
      end
    end
  end
end
