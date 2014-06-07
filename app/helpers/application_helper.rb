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

  def today
    Date.today
  end

  def today_sessions
    Session.where(date: today).reorder('id')
  end

  def future_days
    Session.where("date >= ?", today).distinct.pluck(:date)
  end

  def date_string
    future_days.map! { |date| date.to_s}
  end

end
