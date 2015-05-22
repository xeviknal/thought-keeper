class ApplicationController < ActionController::Base
  layout "application"

  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :redirect_to_list, if: :user_logged?, if: :root_path?

  def user_logged?
    current_user.present?
  end

  def root_path?
    request.path == "/"
  end

  def redirect_to_list
    redirect_to lists_path
  end
end
