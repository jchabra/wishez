class ParentsController < ApplicationController
  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.create(params[:parent])
    if @parent.save
      redirect_to @parent
    else
      render :new
    end
  end

  def edit
  end

  def show
    @parent = Parent.find(params[:id])
  end

  def index
  end
end
