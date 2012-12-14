class ParentsController < ApplicationController
  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.create(params[:parent])
    if @parent.save
      session[:parent_email] = @parent.email
      session[:parent_id] = @parent.id
      redirect_to @parent
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
