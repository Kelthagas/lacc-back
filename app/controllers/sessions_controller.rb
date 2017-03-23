class SessionsController < ApplicationController

  def create
    user = User.find_by(user_id: params[:session][:user_id])
    if user && user.authenticate(params[:session][:password])
      redirect_to(sales_path)
    else
      redirect_to(root_path)
    end
  end

  def destroy
  end
end
