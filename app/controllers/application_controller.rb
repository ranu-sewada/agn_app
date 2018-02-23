class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	render html:"hello world!"
  end

  protected
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || employee_index_path
  end

end
