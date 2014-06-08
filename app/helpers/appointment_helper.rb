module AppointmentHelper

  def past_sessions
    current_user.sessions.where("date <= ?", today)
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


end
