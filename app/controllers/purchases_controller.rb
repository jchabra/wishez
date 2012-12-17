class PurchasesController < ApplicationController
  def index
  end

  def new
    @item = Item.find(params[:item_id]) 
    @purchase = Purchase.new
  end

  def create

    #stripe code here

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
