class PurchasesController < ApplicationController
  def index
  end

  def new
    @item = Item.find(params[:item_id]) 
    @purchase = Purchase.new
  end

  def create
    #stripe code here
    amount = params[:amount].to_i * 100
    token = params[:stripeToken]


    begin
      @purchase = Stripe::Charge.create(
        :amount => amount,
        :card => token,
        :description => 'Rails Stripe Customer',
        :currency =>  'usd'
      )
    rescue => e 
      @error = e.message
      render :new
    end

    @p = Purchase.create(:item_id => params[:item_id], :benefactor_id => params[:benefactor_id])

    redirect_to thanks_path
   end

  def thanks
  end

  def edit
  end

  def show
  end
end
