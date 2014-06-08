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

  def formatted_date(date)
    date.strftime("%B %d, %Y")
  end

  def text_to_date(date_text)
    Date.parse(date_text)
  end

  def past_sessions
    past = []
    current_user.appointments.each do |appointment|
      if appointment.session.date <= today
        past << appointment
      end
    end
    past    
  end

  def future_appointments
    future_sessions = []
    current_user.appointments.each do |appointment|
      if appointment.session.date > today
        future_sessions << appointment
      end
    end    
    future_sessions
  end

  def date_string
    future_days.map! { |date| date.to_s}
  end


end

