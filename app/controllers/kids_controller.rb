class KidsController < ApplicationController
  def new
    @parent = Parent.find(params[:parent_id])
    @kid = Kid.new
  end

  def create
    @parent = Parent.find(params[:parent_id])
    @kid = Kid.create(params[:kid])

    if @kid.save
      @parent.kids << @kid
      redirect_to @parent
    else
      render :new
    end
  end

  def edit
  end

  def show
    kid_id = params[:id]
    @kid = Kid.find(params[:id])
  end

  def index
    @kids = Kid.all
  end
end
