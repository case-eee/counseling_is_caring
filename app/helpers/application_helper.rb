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

  def create_sessions(date)
    @day = [
      session1 = Session.create!(date: date, start_time: '10:00', end_time: '10:30', available: true),
      session2 = Session.create!(date: date, start_time: '10:30', end_time: '11:00', available: true),
      session3 = Session.create!(date: date, start_time: '11:00', end_time: '11:30', available: true),
      session4 = Session.create!(date: date, start_time: '11:30', end_time: '12:00', available: true),
      session5 = Session.create!(date: date, start_time: '12:00', end_time: '12:30', available: true),
      session6 = Session.create!(date: date, start_time: '12:30', end_time: '01:00', available: true),
      session7 = Session.create!(date: date, start_time: '01:00', end_time: '01:30', available: true),
      session8 = Session.create!(date: date, start_time: '01:30', end_time: '02:00', available: true),
      session9 = Session.create!(date: date, start_time: '02:00', end_time: '02:30', available: true),
      session10 = Session.create!(date: date, start_time: '02:30', end_time: '03:00', available: true),
      session11 = Session.create!(date: date, start_time: '03:00', end_time: '03:30', available: true),
      session12 = Session.create!(date: date, start_time: '03:30', end_time: '04:00', available: true),
      session13 = Session.create!(date: date, start_time: '04:00', end_time: '04:30', available: true),
      session14 = Session.create!(date: date, start_time: '04:30', end_time: '05:00', available: true)
    ]
  end

end

