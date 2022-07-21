require 'rails_helper'

RSpec.describe Item do
  it 'creates item from response' do
    data = { id: '46', type: 'item',
             attributes: { name: 'Item Excepturi Et', description: 'Occaecati excepturi quisquam.', unit_price: 392.26, merchant_id: 2 } }

    item = Item.new(data)

    expect(item.name).to eq('Item Excepturi Et')
    expect(item.description).to eq('Occaecati excepturi quisquam.')
  end
end