class MerchantFacade
  def self.create_merchants
    json = MerchantService.get_merchants
    merchants = json[:data].map { |data| Merchant.new(data) }
  end

  def self.create_items
    json = MerchantService.get_items
    items = json[:data].map { |data| Item.new(data) }
  end

  def self.create_one_merchant(id)
    json = MerchantService.get_one_merchant(id)
    merchant = Merchant.new(json[:data])
  end

  def self.create_one_item(id)
    json = MerchantService.get_one_item(id)
    item = Item.new(json[:data])
  end

  def self.create_merchants_items(id)
    json = MerchantService.get_merchants_items(id)
    items = json[:data].map { |data| Item.new(data) }
  end
end