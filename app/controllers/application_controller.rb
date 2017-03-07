class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_site_variables
  def set_site_variables
    @site_content = Content.find_by_content_key('key_header_img')
  end

end
