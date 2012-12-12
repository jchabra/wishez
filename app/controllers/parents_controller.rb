class ParentsController < ApplicationController
  

  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.create(params[:parent])
    if @parent.save
      redirect_to new_kid_path
    else
      render :new
    end

  end

  def edit
  end

  def show
  end

  def index
  end
end
