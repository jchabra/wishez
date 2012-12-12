class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.create(params[:item])
    if @item.save
      redirect_to list_path
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

  def index
  end
end
