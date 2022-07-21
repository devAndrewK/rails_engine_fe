class MerchantService
  def self.get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_merchants
    get_url('http://localhost:3000/api/v1/merchants')
  end

  def self.get_items
    get_url('http://localhost:3000/api/v1/items')
  end

  def self.get_merchants_items(id)
    get_url("http://localhost:3000/api/v1/merchants/#{id}/items")
  end

  def self.get_one_merchant(id)
    get_url("http://localhost:3000/api/v1/merchants/#{id}")
  end

  def self.get_one_item(id)
    get_url("http://localhost:3000/api/v1/items/#{id}")
  end
end