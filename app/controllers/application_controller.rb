class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def check_logged_in
    unless session[:user_id]
      redirect_to(root_path)
    end
  end
end
