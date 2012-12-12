class BenefactorsController < ApplicationController
  def new
    @benef = Kid.new
  end

  def create
    @benef = Benefactor.create(params[:id])
    if @benef.save
      redirect_to kids_path
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
