require 'rails_helper'

RSpec.describe 'MerchantService', :vcr do
  describe 'merchants' do
    it 'get_merchants' do
      parsed_data = MerchantService.get_merchants

      expect(parsed_data).to be_a Hash

      merchant = parsed_data[:data].first
      expect(merchant).to include :id
      expect(merchant[:attributes]).to include :name
    end
    it 'get_one_merchant' do
      parsed_data = MerchantService.get_one_merchant(13)

      expect(parsed_data).to be_a Hash

      merchant = parsed_data[:data]
      expect(merchant).to include :id
      expect(merchant[:attributes]).to include :name
    end
  end

  describe 'items' do
    it 'get_merchants_items' do
      parsed_data = MerchantService.get_merchants_items(12)

      expect(parsed_data).to be_a Hash

      item = parsed_data[:data].first
      expect(item).to include :id
      expect(item[:attributes]).to include :name
      expect(item[:attributes]).to include :description
      expect(item[:attributes]).to include :unit_price
    end

    it 'get_items' do
      parsed_data = MerchantService.get_items

      expect(parsed_data).to be_a Hash

      item = parsed_data[:data].first
      expect(item).to include :id
      expect(item[:attributes]).to include :name
      expect(item[:attributes]).to include :description
      expect(item[:attributes]).to include :unit_price
    end

    it 'get_one_item' do
      parsed_data = MerchantService.get_one_item(232)

      expect(parsed_data).to be_a Hash

      item = parsed_data[:data]
      expect(item).to include :id
      expect(item[:attributes]).to include :name
      expect(item[:attributes]).to include :description
      expect(item[:attributes]).to include :unit_price
    end
  end
end