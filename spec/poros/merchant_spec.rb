require 'rails_helper'

RSpec.describe Merchant do
  it 'creates merchant from response' do
    data = { id: '3', type: 'merchant', attributes: { name: 'Willms and Sons' } }

    merchant = Merchant.new(data)

    expect(merchant.name).to eq('Willms and Sons')
  end
end