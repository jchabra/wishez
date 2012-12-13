class SessionController < ApplicationController
  def new
  end
  def create
    parent = Parent.find_by_email(params[:email]) 
    if Parent && parent.authenticate(params[:password]) 
      session[:parent_id] = parent.id 
      redirect_to kids_path
    else 
      render :new 
    end
  end
  def destroy
    session[:parent_id] = nil
    redirect_to root_path
  end
end