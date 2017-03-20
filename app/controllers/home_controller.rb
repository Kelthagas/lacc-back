class HomeController < ApplicationController
  def index
    @user_id
    @password
  end

  def authenticate
    @id = params[:user_id]
    @password = params[:password]

    if !@id
      redirect_to(home_admin_index_path)
    else
      render('index')
    end
  end

  def admin_index
  end

  def user_index
  end
end
