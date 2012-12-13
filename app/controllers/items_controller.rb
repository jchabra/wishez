class ItemsController < ApplicationController
  def index
    @items = Item.all
  end
  def new
    @list = List.find(params[:list_id]) #This will find the kid's ID and link it to the list => then the list will be linked to that specific kid.
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
    item_id = params[:id]
    @item = Item.find(params[:id])
  end
end
