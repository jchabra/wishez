class SessionController < ApplicationController
  def new
  end

  def create
    type = params[:type]
    if type == 'parent'
      parent = Parent.find_by_email(params[:email]) 
      if parent && parent.authenticate(params[:password]) 
        session[:parent_id] = parent.id 
        redirect_to parent
      else 
        render :new 
      end
    else
      benef = Benefactor.find_by_email(params[:email]) 
      if benef && benef.authenticate(params[:password])
        session[:benef_id] = benef.id
        redirect_to benef
      else
        render :new
      end
    end
  end
  
  def destroy
    session[:parent_id] = nil
    session[:benef_id] = nil
    redirect_to root_path
  end
end