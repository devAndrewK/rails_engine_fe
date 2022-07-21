require 'rails_helper'

RSpec.describe 'Merchant Show', :vcr do
  it 'lists merchant items' do
    visit merchant_items_path(10)
    within "#item-0" do
      expect(page).to have_content("Item Explicabo Ipsam")
    end
  end
end