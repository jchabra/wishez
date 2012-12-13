class ListsController < ApplicationController
  def new
    @kid = Kid.find(params[:kid_id]) #This will find the kid's ID and link it to the list => then the list will be linked to that specific kid.
    @list = List.new
  end

  def create
    @kid = Kid.find(params[:kid_id])
    @list = List.create(params[:list])
    
    if @list.save
      @kid.lists << @list
      redirect_to @kid
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
