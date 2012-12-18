class PurchasesController < ApplicationController
  def index
  end

  def new
    @item = Item.find(params[:item_id]) 
    @purchase = Purchase.new
  end

  def create
    binding.pry
    #stripe code here
    amount = params[:amount].to_i * 100
    token = params[:token]
    @purchase_details = params[:item_id]

    begin
      @purchase = Stripe::Charge.create(
        :amount => amount,
        :card => token,
        :description => 'Rails Stripe Customer',
        :currency =>  'usd'
      )
    rescue => e 
      @error = e.message
    end

    #if stripe works
      @purchase = Purchase.create(params[:purchase])
      
      if @purchase.save
        redirect_to thanks_path
      else
        render :new
      end
    #else
      #try again
    #end
  end

  def thanks
  end

  def edit
  end

  def show
  end
end
