class SessionsController < ApplicationController

  layout 'user'

  before_action :check_logged_in, except: [:create, :destroy]

  def create
    user = User.find_by(user_id: params[:session][:user_id])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to(menu_path)
    else
      redirect_to(root_path)
    end
  end

  def index
    @customers = Customer.all
  end

  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end
end
