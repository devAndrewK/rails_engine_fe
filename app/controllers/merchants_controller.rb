class MerchantsController < ApplicationController
  def index 
    @merchants = MerchantFacade.create_merchants
  end

  def show
    @merchant = MerchantFacade.create_one_merchant(params[:merchant_id])
    @items = MerchantFacade.create_merchants_items(params[:merchant_id])
  end
end