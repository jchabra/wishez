class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.create(params[:list])
    if @list.save
      redirect_to new_item_path
    else
      render :new
    end
  end

  def edit
  end

  def show
    list_id = params[:id]
    @list = List.find(params[:id])
  end

  def index
  end
end
