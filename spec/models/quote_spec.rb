require 'rails_helper'

RSpec.describe Quote, type: :model do
  context 'when model' do
    let(:quote) { create(:quote, name: "#{1.ordinalize} Quote") }

    it do
      expect(quote.name).to eq('1st Quote')
    end
  end
end
