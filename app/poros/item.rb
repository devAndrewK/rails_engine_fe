class Item
  attr_reader :name, :id, :description, :unit_price

  def initialize(data)
    @name = data[:attributes][:name]
    @id = data[:id]
    @description = data[:attributes][:description]
    @unit_price = data[:attributes][:unit_price]
  end
end