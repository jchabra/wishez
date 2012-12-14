class BenefactorsController < ApplicationController
  def index
  end
  def new
    @benef = Benefactor.new
  end

  def create
    @benef = Benefactor.create(params[:benefactor])
    if @benef.save
      session[:benef_email] = @benef.email
      session[:benef_id] = @benef.id
      redirect_to @benef
    else
      render :new
    end
  end

  def edit
  end

  def show
    @benef = Benefactor.find(params[:id])
  end
end
