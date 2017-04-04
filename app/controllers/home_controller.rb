class HomeController < ApplicationController

  def home
    if session[:user_id]
      redirect_to(menu_path)
    end
  end
end
