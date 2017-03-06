class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_site_variables
  def set_site_variables
    @site_content = Content.find_by_content_key("key_header_img")
  end

  # before_action :set_is_logged_in
  #
  # def authenticate
  #   authenticate_or_request_with_http_basic do |user_name, password|
  #     if (user_name == "admin" && password == "pass")
  # 		session[:is_logged_in] = "1"
  # 		return true
  # 	else
  # 		return false
  # 	end
  #   end
  # end
  #
  # def set_is_logged_in
  #   @is_logged_in = session[:is_logged_in]
  # end
end
