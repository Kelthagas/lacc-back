class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(user_id: params[:session][:user_id])
    if user && user.authenticate(params[:session][:password])
      redirect_to(sales_path)
    else
      redirect_to(root_path)
    end
  end

  def destroy
    log_out
    redirect_to(root_path)
  end
end
