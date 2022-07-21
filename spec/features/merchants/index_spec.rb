require 'rails_helper'

RSpec.describe 'Merchant Index', :vcr do
  it 'lists merchants' do
    visit merchants_path
    within "#merchant-0" do
      expect(page).to have_content("Schroeder-Jerde")
    end
  end
end