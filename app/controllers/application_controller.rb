class ApplicationController < ActionController::Base
  protect_from_forgery
  lock

  def lock_app
    session.delete :lock_opened
    redirect_to lock_login_path
  end

end
