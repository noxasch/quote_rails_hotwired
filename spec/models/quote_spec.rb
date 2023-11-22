require 'rails_helper'

RSpec.describe Quote, type: :model do
  context 'when model' do
    let(:quote) { create(:quote) }

    it do
      expect(quote.name).to eq('1st Quote')
    end
  end
end
