module ApplicationHelper
  def current_user
    return nil if session[:user_id].nil?
    @user ||= User.find(session[:user_id])
  end

  def close_session(session_arg) # Make an appointments_helper.rb file and put this in there
    Session.find(session_arg.session_id).update_attributes(available: false)
  end

  def open_session(session_arg) # Make an appointments_helper.rb file and put this in there
	Session.find(session_arg.session_id).update_attributes(available: true)
  end
end
