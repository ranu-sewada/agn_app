module ApplicationHelper

	 def resource_name
    :user
  end

  def resource
    @user ||= User.new
  end
end
