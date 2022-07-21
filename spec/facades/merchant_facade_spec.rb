require 'rails_helper'

RSpec.describe 'MerchantFacade', :vcr do
  it 'create_merchants' do
    merchants = MerchantFacade.create_merchants

    expect(merchants).to be_all Merchant
  end

  it 'create_items' do
    items = MerchantFacade.create_items

    expect(items).to be_all Item
  end
  
  it 'create_one_item' do
    item = MerchantFacade.create_one_item(13)

    expect(item).to be_an Item
  end

  it 'create_one_merchant' do
    merchant = MerchantFacade.create_one_merchant(12)

    expect(merchant).to be_a Merchant
  end
end