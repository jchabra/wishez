class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def new
    @list = List.find(params[:list_id]) 
    @item = Item.new
  end

  def create
    @list = List.find(params[:list_id])
    @item = Item.create(params[:item])
    
    if @item.save
      @list.items << @item
      redirect_to @list
    else
      render :new
    end
  end

  def edit
  end

  def show
    @item = Item.find(params[:id])
    @item_added = @item.created_at
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end
end
